import 'package:final_shar3ia_mobile/features/layout/cubit/cubit.dart';
import 'package:final_shar3ia_mobile/features/layout/cubit/status.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class Home_View extends StatefulWidget {
  const Home_View({Key? key}) : super(key: key);

  @override
  State<Home_View> createState() => _Home_ViewState();
}

class _Home_ViewState extends State<Home_View> {
  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return BlocConsumer<AppCubit, AppStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = AppCubit.get(context);
          return Scaffold(
            body: cubit.screens[cubit.currentIndex],

            bottomNavigationBar: BottomNavigationBar(
              onTap: (index) {
                AppCubit.get(context).changeBottomNav(index);
              },
              currentIndex: AppCubit.get(context).currentIndex,
              backgroundColor: Colors.green,
              selectedItemColor: Colors.green,
              unselectedItemColor: Colors.black,
              items: [
                const BottomNavigationBarItem(
                  icon: Icon(
                    Icons.people,
                  ),
                  label: "Orphans",
                ),
                const BottomNavigationBarItem(
                  icon: Icon(
                    Icons.people,
                  ),
                  label: "Poor",
                ),
                const BottomNavigationBarItem(
                  icon: Icon(
                    Icons.food_bank,
                  ),
                  label: "food banks",
                ),
                const BottomNavigationBarItem(
                  icon: Icon(
                    Icons.people_rounded,
                  ),
                  label: "mahgoub",
                ),
                const BottomNavigationBarItem(
                  icon: Icon(
                    Icons.list,
                  ),
                  label: "More",
                ),
              ],
            ),
            //
          );
        },
      );
    });
  }
}
