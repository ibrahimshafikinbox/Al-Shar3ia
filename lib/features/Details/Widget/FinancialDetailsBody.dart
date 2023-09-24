import 'package:final_shar3ia_mobile/core/Widgtes/divider.dart';
import 'package:final_shar3ia_mobile/core/Widgtes/no_data.dart';
import 'package:final_shar3ia_mobile/core/localizations/clasess/app_localization.dart';
import 'package:final_shar3ia_mobile/features/Details/Cubit/gat_datails_cubit.dart';
import 'package:final_shar3ia_mobile/features/Details/Widget/CustomChildrenRow.dart';
import 'package:flutter/material.dart';

class FinancialDetailsBody extends StatelessWidget {
  const FinancialDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    var fainacialcubit =
        DetailsCubit.get(context).detailsModel?.data?.moneyHelpTypes;
    if (DetailsCubit.get(context)
            .detailsModel
            ?.data
            ?.moneyHelpTypes
            ?.isNotEmpty ==
        true) {
      return SizedBox(
        height: 120,
        child: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            var financialdata = DetailsCubit.get(context)
                .detailsModel
                ?.data
                ?.moneyHelpTypes![index];

            return Container(
              height: 110,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: const Color.fromARGB(255, 199, 193, 193),
                ),
              ),
              child: Column(
                children: [
                  CustomChildrenRow(
                    requiredText:
                        AppLocalizations.of(context)!.translate("title"),
                    textdata: financialdata?.title ?? " ",
                  ),
                  const MyDivider(),
                  CustomChildrenRow(
                    requiredText:
                        AppLocalizations.of(context)!.translate("total_Aid"),
                    textdata: ' ${financialdata?.amount ?? " "}',
                  ),
                ],
              ),
            );
          },
        ),
      );
    } else {
      return SizedBox(
          height: 150,
          child: NoDataWidget(
              // requiredtext: "Reload ",
              onPressed: () {}));
    }
  }
}
