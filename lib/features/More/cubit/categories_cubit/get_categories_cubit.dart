import 'package:final_shar3ia_mobile/features/More/data/categories_model/categories_model.dart';
import 'package:dio/dio.dart';
import 'package:final_shar3ia_mobile/core/Constants/network_constants/network_constats.dart';
import 'package:final_shar3ia_mobile/features/More/cubit/categories_cubit/categories_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoriesCubit extends Cubit<CategoriesState> {
  CategoriesCubit() : super(CategoriesInitial());
  static CategoriesCubit get(context) => BlocProvider.of(context);
  Dio dio = Dio();
  CategoriesModel? categoriesmodel;

  Future<void> fetchCategories() async {
    emit(CategoriesLoading());

    dio.options.headers['Authorization'] = Constants.token;

    final response = await dio
        .get("${Constants.BaseUrl}${Constants.Category}")
        .then((value) {
      print("🚀🚀🚀🚀🚀${value.data}");
      categoriesmodel = CategoriesModel.fromJson(value.data);
      print('🚀🚀🚀🚀🚀${categoriesmodel!.data!.length}');

      emit(CategoriesSuccess());
    }).catchError((e) {
      print(e.toString());
      emit(CategoriesError());
    });
  }
}
