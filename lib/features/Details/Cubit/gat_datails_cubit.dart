import 'package:dio/dio.dart';
import 'package:final_shar3ia_mobile/features/Details/data/details_model/details_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:final_shar3ia_mobile/core/Constants/network_constants/network_constats.dart';
import 'package:final_shar3ia_mobile/features/Details/Cubit/get_details_state.dart';

class DetailsCubit extends Cubit<DetailsState> {
  DetailsCubit(
    this.ID,
  ) : super(GetDetailsInitial());
  static DetailsCubit get(BuildContext context) => context.read<DetailsCubit>();
  final ID;
  final Dio _dio = Dio();
  DetailsModel? detailsModel;
  void getDetails(ID) async {
    try {
      emit(GetDetailsLoading());
      _dio.options.headers['Authorization'] = Constants.token;
      final response = await _dio
          .get('${Constants.BaseUrl}/cases/${ID}/details')
          .then((value) {
        print("🚀🚀${value.data}");
        detailsModel = DetailsModel.fromJson(value.data);
        print(detailsModel?.data?.id);
        emit(GetDetailsSuccess());
      });
    } catch (error) {
      print(error.toString());
      emit(GetDetailsError());
    }
  }
}
