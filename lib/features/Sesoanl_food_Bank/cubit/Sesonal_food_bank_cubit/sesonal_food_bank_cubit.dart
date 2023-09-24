import 'package:final_shar3ia_mobile/features/Sesoanl_food_Bank/cubit/Sesonal_food_bank_cubit/sesonal_food_bank_States.dart';
import 'package:dio/dio.dart';
import 'package:final_shar3ia_mobile/core/Constants/network_constants/network_constats.dart';
import 'package:final_shar3ia_mobile/features/Sesoanl_food_Bank/data/Model/sesonal_food_bank_model/sesonal_food_bank_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

class SesoanlFoodBankCubit extends Cubit<SesonalFoodBankStates> {
  SesoanlFoodBankCubit() : super(GetSesonalFoodBankInitial());
  // static SesoanlFoodBankCubit get(context) => BlocProvider.of(context);
  static SesoanlFoodBankCubit get(BuildContext context) =>
      context.read<SesoanlFoodBankCubit>();

  SesonalFoodBankModel? sesonalFoodBankModel;
  final Dio _dio = Dio();

  void getSesonalFoodBankData() async {
    emit(GetSesonalFoodBankLoading());

    try {
      _dio.options.headers['Authorization'] = Constants.token;
      final response = await _dio
          .get('${Constants.BaseUrl}${Constants.SesonalFoodBankDetails}')
          .then((value) {
        debugPrint(
            "   🚀🚀🚀🚀🚀🚀Sesonal food bank data ========${value.data}");
        sesonalFoodBankModel = SesonalFoodBankModel.fromJson(value.data);
        print("🚀🚀🚀🚀🚀🚀${sesonalFoodBankModel?.data?.length}");
        emit(GetSesonalFoodBankSuccess());
      });
    } catch (error) {
      emit(GetSesonalFoodBankError());
      print(error.toString());
    }
  }
}
