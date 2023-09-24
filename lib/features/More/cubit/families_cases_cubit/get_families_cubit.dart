import 'package:final_shar3ia_mobile/features/More/data/family_student_model/family_student_model.dart';
import 'package:dio/dio.dart';
import 'package:final_shar3ia_mobile/core/Constants/network_constants/network_constats.dart';
import 'package:final_shar3ia_mobile/features/More/cubit/families_cases_cubit/families_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FamiliesCubit extends Cubit<familiesState> {
  FamiliesCubit() : super(familiesInitial());
  static FamiliesCubit get(context) => BlocProvider.of(context);
  List<FamilyStudentModel> familydetails =
      []; // Added a list to store the categories
  final Dio _dio = Dio();
  FamilyStudentModel? familyStudentModel;

  void getStudentDetails() async {
    emit(familiesLoading());

    try {
      _dio.options.headers['Authorization'] = Constants.token;
      final response = await _dio
          .get('${Constants.BaseUrl}${Constants.FamiliesDetailsStudent}')
          .then((value) {
        emit(familiesSuccess());
        familyStudentModel = FamilyStudentModel.fromJson(value.data);

        print("🚀🚀🚀🚀${familyStudentModel?.data?.length}");
      });
    } catch (error) {
      emit(familiesError());
      print(error.toString());
    }
  }

  // void getSesonalFoodBankData() async {
  //   try {
  //     _dio.options.headers['Authorization'] = Constants.token;
  //     final response = await _dio
  //         .get('${Constants.BaseUrl}${Constants.SesonalFoodBankDetails}')
  //         .then((value) {
  //       debugPrint("   Sesonal food bank data ========${value.data}");
  //     });
  //   } catch (error) {
  //     print(error.toString());
  //   }
  // }
}
