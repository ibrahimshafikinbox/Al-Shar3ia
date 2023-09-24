import 'package:final_shar3ia_mobile/features/poor/View/poor_view.dart';
import 'package:final_shar3ia_mobile/features/More/view/more.dart';
import 'package:final_shar3ia_mobile/features/food%20bank/view/food_bank.dart';
import 'package:final_shar3ia_mobile/features/layout/cubit/status.dart';
import 'package:final_shar3ia_mobile/features/mahgoub/view/mahgoub.dart';
import 'package:final_shar3ia_mobile/features/orphans/Views/orphans.dart';

import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitialState());

  static AppCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;
  List<Widget> screens = [
    const OrphansView(),
    const PoorView(),
    const food_Bank_View(),
    const MahgoubView(),
    const MoreView(),
  ];

  List<String> titles = [
    'Orphans',
    'Poor',
    'Food Bank ',
    "Mahgoub",
    'More',
  ];
  void changeBottomNav(int index) {
    currentIndex = index;
    emit(AppChangeBottomNavBarState());
  }
}
