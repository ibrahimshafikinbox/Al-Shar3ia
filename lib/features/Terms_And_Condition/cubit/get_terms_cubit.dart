import 'package:dio/dio.dart';
import 'package:final_shar3ia_mobile/core/Constants/network_constants/network_constats.dart';
import 'package:final_shar3ia_mobile/core/helpers/LocalizationHelper%20.dart';

import 'package:final_shar3ia_mobile/features/Terms_And_Condition/cubit/get_terms_stete.dart';
import 'package:final_shar3ia_mobile/features/Terms_And_Condition/data/terms_and_condition_model.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TermsAndConditionCubit extends Cubit<TermsAndConditionState> {
  TermsAndConditionCubit() : super(GetTermsAndConditionInitial());
  static TermsAndConditionCubit get(BuildContext context) =>
      context.read<TermsAndConditionCubit>();

  final Dio _dio = Dio();
  TermsAndConditionModel? termsAndConditionModel;

  void getTermsAndCondition(BuildContext context) async {
    emit(GetTermsAndConditionLoading());

    try {
      _dio.options.headers['Authorization'] = Constants.token;
      _dio.options.headers['Accept-Language'] =
          Localizations.localeOf(context).languageCode;
      final response = await _dio
          .get('${Constants.BaseUrl}${Constants.TermsAndConditionDatails}')
          .then((value) {
        print("Terms and conditioin Data 🚀🚀${value.data}");
        termsAndConditionModel = TermsAndConditionModel.fromJson(value.data);
        print(termsAndConditionModel!.data!.isEmpty);
        emit(GetTermsAndConditionSuccess());
      });
    } catch (error) {
      // print(error.toString());
      emit(GetTermsAndConditionError());
    }
  }
}
