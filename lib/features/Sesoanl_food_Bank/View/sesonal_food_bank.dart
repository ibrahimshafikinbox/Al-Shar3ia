import 'package:final_shar3ia_mobile/core/Widgtes/no_data.dart';
import 'package:final_shar3ia_mobile/core/helpers/navigation_helper.dart';
import 'package:final_shar3ia_mobile/core/localizations/clasess/app_localization.dart';
import 'package:final_shar3ia_mobile/features/Details/View/details.dart';
import 'package:final_shar3ia_mobile/features/Details/View/details_new_file.dart';
import 'package:final_shar3ia_mobile/features/Sesoanl_food_Bank/cubit/Sesonal_food_bank_cubit/sesonal_food_bank_States.dart';
import 'package:final_shar3ia_mobile/features/Sesoanl_food_Bank/cubit/Sesonal_food_bank_cubit/sesonal_food_bank_cubit.dart';
import 'package:final_shar3ia_mobile/features/Sesoanl_food_Bank/data/Model/sesonal_food_bank_model/datum.dart';
import 'package:final_shar3ia_mobile/features/mahgoub/cubit/makePhoneCall_cubit.dart';
import 'package:final_shar3ia_mobile/features/student_3elm/widgets/tableDataBuilder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:share_plus/share_plus.dart';

class SeSonalFoodBankView extends StatefulWidget {
  const SeSonalFoodBankView({super.key});

  @override
  State<SeSonalFoodBankView> createState() => _SeSonalFoodBankViewState();
}

class _SeSonalFoodBankViewState extends State<SeSonalFoodBankView> {
  @override
  void initState() {
    super.initState();
    try {
      SesoanlFoodBankCubit.get(context).getSesonalFoodBankData();
    } finally {
      print(
          SesoanlFoodBankCubit.get(context).sesonalFoodBankModel?.data?.length);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.translate("sesonal_food")),
        actions: [
          IconButton(
              onPressed: () {
                SesoanlFoodBankCubit.get(context).getSesonalFoodBankData();
              },
              icon: const Icon(Icons.refresh))
        ],
      ),
      body: Column(
        children: [
          if (SesoanlFoodBankCubit.get(context)
                  .sesonalFoodBankModel
                  ?.data
                  ?.length !=
              null)
            Expanded(
              child: ListView.builder(
                  itemCount: SesoanlFoodBankCubit.get(context)
                      .sesonalFoodBankModel
                      ?.data
                      ?.length,
                  itemBuilder: (BuildContext context, int index) {
                    Sesonal_Food_Bank_Data Sesonaldata =
                        SesoanlFoodBankCubit.get(context)
                            .sesonalFoodBankModel!
                            .data![index];

                    return TableDataBuilder(
                      id: "${Sesonaldata.id ?? ""}",
                      name: "${Sesonaldata.name ?? ""}",
                      title: "${Sesonaldata.area?.title ?? ""}",
                      nationalId: "${Sesonaldata.nationalId ?? ""}",
                      address: "${Sesonaldata.address ?? ""}",
                      callOnPressesd: () {
                        MakePhonecallCubit.get(context)
                            .makePhoneCall(Sesonaldata.mobile.toString());
                      },
                      detailsOnPressed: () {
                        navigateTo(context, DetailsNewFile(id: Sesonaldata.id));
                      },
                      locationOnPressed: () {},
                      sharenOnPressed: () async {
                        await Share.share("${Sesonaldata.toJson()}");
                      },
                    );
                  }),
            ),
          if (SesoanlFoodBankCubit.get(context)
                  .sesonalFoodBankModel
                  ?.data
                  ?.length ==
              0)
            NoDataWidget(
                // requiredtext: "Relaod  ",
                onPressed: () {}),
        ],
      ),
    );
  }
}
