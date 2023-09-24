import 'package:dio/dio.dart';
import 'package:final_shar3ia_mobile/core/Constants/network_constants/network_constats.dart';
import 'package:final_shar3ia_mobile/features/More/data/has_mahgoub_model/has_mahgoub_model.dart';

import 'package:final_shar3ia_mobile/features/mahgoub/cubit/get_mahgoub_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MahgoubCubit extends Cubit<MahgoubState> {
  MahgoubCubit() : super(GetMahgoubInitial());
  // static MahgoubCubit get(context) => BlocProvider.of(context);
  static MahgoubCubit get(BuildContext context) => context.read<MahgoubCubit>();

  final Dio _dio = Dio();
  HasMahgoubModel? hasMahgoubModel;
  void getMahgoub() async {
    try {
      emit(GetMahgoubLoading());
      _dio.options.headers['Authorization'] = Constants.token;
      final response = await _dio
          .get('${Constants.BaseUrl}${Constants.hasmahgoubDetails}')
          .then((value) {
        print("🚀🚀${value.data}");
        hasMahgoubModel = HasMahgoubModel.fromJson(value.data);
        print(hasMahgoubModel?.data?.length);
        emit(GetMahgoubSuccess());
      });
    } catch (error) {
      print(error.toString());
      emit(GetMahgoubError());
    }
  }
}
