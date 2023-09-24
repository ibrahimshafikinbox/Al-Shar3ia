import 'package:dio/dio.dart';
import 'package:final_shar3ia_mobile/core/Constants/network_constants/network_constats.dart';
import 'package:final_shar3ia_mobile/features/patient/cubit/get_patient_state.dart';
import 'package:final_shar3ia_mobile/features/patient/data/patient_model/patient_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PatientCubit extends Cubit<PatientState> {
  PatientCubit() : super(GetPatientInitial());
  // static PatientCubit get(context) => BlocProvider.of(context);
  static PatientCubit get(BuildContext context) => context.read<PatientCubit>();
  PatientModel? patientModel;

  final Dio _dio = Dio();

  void getPatient() async {
    try {
      emit(GetPatientLoading());
      _dio.options.headers['Authorization'] = Constants.token;
      final response = await _dio
          .get('${Constants.BaseUrl}${Constants.PatientDatails}')
          .then((value) {
        print("🚀🚀${value.data}");
        patientModel = PatientModel.fromJson(value.data);
        print(patientModel!.data!.length);
        emit(GetPatientSuccess());
      });
    } catch (error) {
      print(error.toString());
      emit(GetPatientError());
    }
  }
}
