import 'package:final_shar3ia_mobile/core/Widgtes/no_data.dart';
import 'package:final_shar3ia_mobile/core/helpers/navigation_helper.dart';
import 'package:final_shar3ia_mobile/core/localizations/clasess/app_localization.dart';
import 'package:final_shar3ia_mobile/features/Details/Cubit/gat_datails_cubit.dart';
import 'package:final_shar3ia_mobile/features/Details/Cubit/get_details_state.dart';
import 'package:flutter/material.dart';

import 'package:final_shar3ia_mobile/core/Widgtes/drob_down_list.dart';
import 'package:final_shar3ia_mobile/features/Details/Widget/ChildrenDetailsBody.dart';
import 'package:final_shar3ia_mobile/features/Details/Widget/FinancialDetailsBody.dart';
import 'package:final_shar3ia_mobile/features/Details/Widget/QuestionWithConfirmationWidget%20.dart';
import 'package:final_shar3ia_mobile/features/Details/Widget/family_details_Body.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailsNewFile extends StatefulWidget {
  final id;

  const DetailsNewFile({
    Key? key,
    required this.id,
  }) : super(key: key);

  @override
  State<DetailsNewFile> createState() => _DetailsNewFileState();
}

class _DetailsNewFileState extends State<DetailsNewFile> {
  bool familiesOpened = false;
  bool childrenOpened = false;
  bool financialOpened = false;

  void openfamilyDetails() {
    setState(() {
      familiesOpened = !familiesOpened;
    });
  }

  void openChildrenDetails() {
    setState(() {
      childrenOpened = !childrenOpened;
    });
  }

  void openFinancialDetails() {
    setState(() {
      financialOpened = !financialOpened;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    DetailsCubit.get(context).getDetails(widget.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${DetailsCubit.get(context).detailsModel?.data?.name}"),
      ),
      body: BlocBuilder<DetailsCubit, DetailsState>(
        builder: (context, state) {
          if (state is GetDetailsLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is GetDetailsSuccess) {
            return ListView(
              children: [
                Column(
                  /** */
                  children: [
                    DropDownList(
                      requiredtext: AppLocalizations.of(context)!
                          .translate("family_Details"),
                      onpressed: openfamilyDetails,
                    ),
                    if (familiesOpened) const FamilyDetailsBody(),
                    const SizedBox(
                      height: 10,
                    ),
                    //
                    DropDownList(
                      requiredtext: AppLocalizations.of(context)!
                          .translate("children_Details"),
                      onpressed: openChildrenDetails,
                    ),
                    if (childrenOpened) const ChildrenDetailsBody(),
                    const SizedBox(
                      height: 10,
                    ),
                    DropDownList(
                      requiredtext: AppLocalizations.of(context)!
                          .translate("financial_Aid"),
                      onpressed: openFinancialDetails,
                    ),
                    if (financialOpened)
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: FinancialDetailsBody(),
                      ),
                    const SizedBox(
                      height: 10,
                    ),
                    QuestionWithConfirmationWidget(
                      question: AppLocalizations.of(context)!
                          .translate("take_mahgoub"),
                      condition: DetailsCubit.get(context)
                              .detailsModel
                              ?.data
                              ?.mahgoubNumber !=
                          0,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    QuestionWithConfirmationWidget(
                      question: AppLocalizations.of(context)!
                          .translate("show_reports"),
                      condition: DetailsCubit.get(context)
                              .detailsModel
                              ?.data
                              ?.showInReport !=
                          0,
                    )
                  ],
                ),
              ],
            );
          } else if (state is GetDetailsError) {
            return NoDataWidget(
              // requiredtext: "reload",
              onPressed: () {
                DetailsCubit.get(context).getDetails(widget.id);
              },
            );
          } else {
            return NoDataWidget(
              // requiredtext: "reload",
              onPressed: () {
                DetailsCubit.get(context).getDetails(widget.id);
              },
            );
          }
        },
      ),
    );
  }
}
// money help type
