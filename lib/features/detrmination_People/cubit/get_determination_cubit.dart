import 'package:dio/dio.dart';
import 'package:final_shar3ia_mobile/core/Constants/network_constants/network_constats.dart';

import 'package:final_shar3ia_mobile/features/detrmination_People/cubit/get_determinatiom_state.dart';
import 'package:final_shar3ia_mobile/features/detrmination_People/data/peopole_of_determination_model/peopole_of_determination_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DeterminationPeopleCubit extends Cubit<DeterminationState> {
  DeterminationPeopleCubit() : super(GetDeterminationInitial());
  // static DeterminationPeopleCubit get(context) => BlocProvider.of(context);
  static DeterminationPeopleCubit get(BuildContext context) =>
      context.read<DeterminationPeopleCubit>();
  PeopoleOfDeterminationModel? peopoleOfDeterminationModel;

  final Dio _dio = Dio();

  void getDeterminationPeople() async {
    try {
      emit(GetDeterminationLoading());
      _dio.options.headers['Authorization'] = Constants.token;
      final response = await _dio
          .get('${Constants.BaseUrl}${Constants.determiantionDetails}')
          .then((value) {
        print("🚀🚀${value.data}");
        peopoleOfDeterminationModel =
            PeopoleOfDeterminationModel.fromJson(value.data);
        print(peopoleOfDeterminationModel!.data!.length);
        emit(GetDeterminationSuccess());
      });
    } catch (error) {
      print(error.toString());
      emit(GetDeterminationError());
    }
  }
}
