import 'package:final_shar3ia_mobile/core/Widgtes/no_data.dart';
import 'package:final_shar3ia_mobile/core/helpers/navigation_helper.dart';
import 'package:final_shar3ia_mobile/features/More/cubit/categories_cubit/get_categories_cubit.dart';
import 'package:final_shar3ia_mobile/features/More/widgets/categories/CategoriesItem.dart';
import 'package:final_shar3ia_mobile/features/Sesoanl_food_Bank/View/sesonal_food_bank.dart';
import 'package:final_shar3ia_mobile/features/Sesoanl_food_Bank/cubit/Sesonal_food_bank_cubit/sesonal_food_bank_States.dart';
import 'package:final_shar3ia_mobile/features/Terms_And_Condition/Widgets/terms_and_condition_body.dart';
import 'package:final_shar3ia_mobile/features/Terms_And_Condition/cubit/get_terms_cubit.dart';
import 'package:final_shar3ia_mobile/features/detrmination_People/View/determiantion_View.dart';
import 'package:final_shar3ia_mobile/features/patient/view/patient.dart';
import 'package:final_shar3ia_mobile/features/student_3elm/View/student.dart';
import 'package:flutter/material.dart';

import 'package:final_shar3ia_mobile/features/Sesoanl_food_Bank/cubit/Sesonal_food_bank_cubit/sesonal_food_bank_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListOfCategries extends StatefulWidget {
  @override
  State<ListOfCategries> createState() => _ListOfCategriesState();
}

class _ListOfCategriesState extends State<ListOfCategries> {
  @override
  void initState() {
    SesoanlFoodBankCubit.get(context).getSesonalFoodBankData();
  }

  @override
  Widget build(BuildContext context) {
    var categorycubit = CategoriesCubit.get(context);
    return BlocBuilder<SesoanlFoodBankCubit, SesonalFoodBankStates>(
      builder: (context, state) {
        if (state is GetSesonalFoodBankLoading) {
          // Show a loading indicator
          return const Center(child: CircularProgressIndicator());
        } else if (state is GetSesonalFoodBankSuccess) {
          return Expanded(
            child: ListView.builder(
                itemCount:
                    CategoriesCubit.get(context).categoriesmodel!.data!.length,
                itemBuilder: (BuildContext context, int index) {
                  var categoryId =
                      categorycubit.categoriesmodel!.data?[index].id;

                  return CategoriesItem(
                    text:
                        '${CategoriesCubit.get(context).categoriesmodel!.data?[index].title}',
                    onPressed: () {
                      if (categoryId == 40)
                        navigateTo(context, SeSonalFoodBankView());

                      if (categoryId == 41)
                        navigateTo(
                          context,
                          StudentView(),
                        );
                      if (categoryId == 42)
                        navigateTo(
                          context,
                          DetermiantionPopleView(),
                        );

                      if (categorycubit.categoriesmodel!.data?[index].id == 46)
                        navigateTo(
                          context,
                          const PatientView(),
                        );
                    },
                  );
                }),
          );
        } else if (state is GetSesonalFoodBankError) {
          return NoDataWidget(
              // requiredtext: "reload",
              onPressed: () {
            TermsAndConditionCubit.get(context).getTermsAndCondition(context);
          });
        } else {
          return const Center(child: Text('there is proplem '));
        }
      },
    );
  }
}
