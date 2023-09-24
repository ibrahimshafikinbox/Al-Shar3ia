import 'package:final_shar3ia_mobile/core/Constants/Local_constants/local_constants.dart';
import 'package:final_shar3ia_mobile/core/Constants/network_constants/network_constats.dart';
import 'package:final_shar3ia_mobile/core/helpers/Cach_helper.dart';
import 'package:final_shar3ia_mobile/features/Login/Cubits/Login_States.dart';
import 'package:dio/dio.dart';
import 'package:final_shar3ia_mobile/features/Login/data/login_model/login_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginCubit extends Cubit<LoginState> {
  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;
  final Dio _dio = Dio();
  late LoginModel loginModel;

  LoginCubit() : super(LoginInitial());
  static LoginCubit get(context) => BlocProvider.of(context);

  Future<void> loginuser({
    required String phone,
    required String password,
  }) async {
    String phonedevicetoken = await _getDeviceToken();

    emit(LoginLoading());
    await _dio
        .post(
      '${Constants.BaseUrl}${Constants.Login}',
      data: {
        'phone': phone,
        'password': password,
        'device_token': "$phonedevicetoken",
        'device_type': "android",
      },
      options: Options(
        headers: {
          'Accept': 'application/json',
          'Accept-Language': 'en',
        },
      ),
    )
        .then((value) async {
      print("🚀🚀🚀🚀${phonedevicetoken}");
      debugPrint(value.data.toString());
      loginModel = LoginModel.fromJson(value.data);
      print(loginModel?.data?.name);
// await CacheHelper.saveData(key: , value: null)
      emit(LoginSuccess());
    }).catchError((onError) {
      debugPrint(onError.toString());
      emit(LoginError());
    });
  }

  Future<String> _getDeviceToken() async {
    NotificationSettings settings = await _firebaseMessaging.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );

    if (settings.authorizationStatus == AuthorizationStatus.authorized ||
        settings.authorizationStatus == AuthorizationStatus.provisional) {
      String? token = await _firebaseMessaging.getToken();
      return token ?? '';
    } else {
      throw Exception('Failed to grant permission for notifications');
    }
  }

//   Future<void> _saveDeviceToken(String deviceToken) async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     await prefs.setString('device', deviceToken);
//   }
// }
}
