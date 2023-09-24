import 'package:final_shar3ia_mobile/core/Widgtes/divider.dart';
import 'package:final_shar3ia_mobile/core/Widgtes/no_data.dart';
import 'package:final_shar3ia_mobile/core/localizations/clasess/app_localization.dart';
import 'package:final_shar3ia_mobile/features/Details/Cubit/gat_datails_cubit.dart';
import 'package:final_shar3ia_mobile/features/Details/Widget/CustomChildrenRow.dart';
import 'package:flutter/material.dart';

class ChildrenDetailsBody extends StatelessWidget {
  const ChildrenDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    var childrendetailsCubit = DetailsCubit.get(context).detailsModel?.data;
    if (DetailsCubit.get(context).detailsModel?.data?.children?.length != 0) {
      return Column(
        children: [
          ListView.builder(
              shrinkWrap: true,
              itemCount: DetailsCubit.get(context)
                  .detailsModel
                  ?.data
                  ?.children
                  ?.length,
              itemBuilder: (BuildContext context, int index) {
                var childdata = DetailsCubit.get(context)
                    .detailsModel
                    ?.data
                    ?.children![index];
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 220,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: const Color.fromARGB(255, 199, 193, 193),
                      ),
                    ),
                    child: Column(
                      children: [
                        CustomChildrenRow(
                          requiredText:
                              AppLocalizations.of(context)!.translate("name"),
                          textdata: "${childdata?.name ?? "empty "} ",
                        ),
                        MyDivider(),
                        CustomChildrenRow(
                          requiredText: AppLocalizations.of(context)!
                              .translate("national_Id"),
                          textdata: "${childdata?.nationalId ?? "empty "} ",
                        ),
                        MyDivider(),
                        CustomChildrenRow(
                          requiredText: AppLocalizations.of(context)!
                              .translate("birth_Data"),
                          textdata: "${childdata?.birthdate ?? "empty "} ",
                        ),
                        MyDivider(),
                        CustomChildrenRow(
                          requiredText: AppLocalizations.of(context)!
                              .translate("education_Level"),
                          textdata: "${childdata?.educationLevel ?? "empty "} ",
                        ),
                      ],
                    ),
                  ),
                );
              }),
        ],
      );
    } else {
      return NoDataWidget(
          // requiredtext: "Reload",
          onPressed: () {});
    }
  }
}
