import 'package:dio/dio.dart';
import 'package:final_shar3ia_mobile/core/Constants/network_constants/network_constats.dart';
import 'package:final_shar3ia_mobile/features/Privacy/cubit/get_privacy_stete.dart';
import 'package:final_shar3ia_mobile/features/Privacy/data/privacy_model.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PrivacyCubit extends Cubit<PrivacyState> {
  PrivacyCubit() : super(GetPrivacyInitial());
  // static PrivacyCubit get(context) => BlocProvider.of(context);
  static PrivacyCubit get(BuildContext context) => context.read<PrivacyCubit>();

  final Dio _dio = Dio();
  PrivacyModel? privacyModel;
  void getPrivacy(BuildContext context) async {
    try {
      emit(GetPrivacyLoading());
      _dio.options.headers['Authorization'] = Constants.token;
      _dio.options.headers['Accept-Language'] =
          Localizations.localeOf(context).languageCode;
      ;

      final response = await _dio
          .get('${Constants.BaseUrl}${Constants.PrivacyDatails}')
          .then((value) {
        debugPrint("Privacy Data  🚀🚀${value.data}");
        privacyModel = PrivacyModel.fromJson(value.data);
        print(privacyModel!.data!.isEmpty);
        emit(GetPrivacySuccess());
      });
    } catch (error) {
      print(error.toString());
      emit(GetPrivacyError());
    }
  }
}
