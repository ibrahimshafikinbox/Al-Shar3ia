import 'package:final_shar3ia_mobile/core/localizations/clasess/app_localization.dart';
import 'package:flutter/material.dart';

import 'package:final_shar3ia_mobile/features/student_3elm/widgets/TableCellWidget.dart';

class CustomTableCell extends StatelessWidget {
  final id;
  final name;
  final title;
  final nationalId;
  final address;
  final code;
  final category;
  final status;
  final partner_life_status;
  final partner_name;
  final partner_national_id;
  final mobile;
  final number_of_children;
  final area;
  final income_amount;

  // final   category;

  // final VoidCallback detailsOnPressed;
  // final VoidCallback callOnPressesd;
  // final VoidCallback locationOnPressed;
  // final VoidCallback sharenOnPressed;

  const CustomTableCell({
    Key? key,
    required this.id,
    required this.name,
    required this.title,
    required this.nationalId,
    required this.address,
    required this.code,
    required this.category,
    required this.status,
    required this.partner_life_status,
    required this.partner_name,
    required this.partner_national_id,
    required this.mobile,
    required this.number_of_children,
    required this.area,
    required this.income_amount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            children: [
              TableCellWidget(
                  text: AppLocalizations.of(context)!.translate("code"),
                  reqiredColor: Colors.white),
              TableCellNetworkWidget(text: code, reqiredColor: Colors.white),
            ],
          ),
          Row(
            children: [
              TableCellWidget(
                  text: AppLocalizations.of(context)!.translate("category"),
                  reqiredColor: Colors.white),
              TableCellNetworkWidget(
                  text: category, reqiredColor: Colors.white),
            ],
          ),
          Row(
            children: [
              TableCellWidget(
                  text: AppLocalizations.of(context)!.translate("status"),
                  reqiredColor: Colors.white),
              TableCellNetworkWidget(text: status, reqiredColor: Colors.white),
            ],
          ),
          Row(
            children: [
              TableCellWidget(
                  text: AppLocalizations.of(context)!.translate("name"),
                  reqiredColor: Colors.white),
              TableCellNetworkWidget(text: name, reqiredColor: Colors.white),
            ],
          ),
          Row(
            children: [
              TableCellWidget(
                  text: AppLocalizations.of(context)!
                      .translate("partner_Life_Sataus"),
                  reqiredColor: Colors.white),
              TableCellNetworkWidget(
                  text: partner_life_status, reqiredColor: Colors.white),
            ],
          ),
          Row(
            children: [
              TableCellWidget(
                  text: AppLocalizations.of(context)!.translate("partner_name"),
                  reqiredColor: Colors.white),
              TableCellNetworkWidget(
                  text: partner_name, reqiredColor: Colors.white),
            ],
          ),
          Row(
            children: [
              TableCellWidget(
                  text: AppLocalizations.of(context)!
                      .translate("partner_National_Id"),
                  reqiredColor: Colors.white),
              TableCellNetworkWidget(
                  text: partner_national_id, reqiredColor: Colors.white),
            ],
          ),
          Row(
            children: [
              TableCellWidget(
                  text: AppLocalizations.of(context)!.translate("phone"),
                  reqiredColor: Colors.white),
              TableCellNetworkWidget(text: mobile, reqiredColor: Colors.white),
            ],
          ),
          Row(
            children: [
              TableCellWidget(
                  text: AppLocalizations.of(context)!
                      .translate("Number_children"),
                  reqiredColor: Colors.white),
              TableCellNetworkWidget(
                  text: number_of_children, reqiredColor: Colors.white),
            ],
          ),
          Row(
            children: [
              TableCellWidget(
                  // text: ' address  ',
                  text: AppLocalizations.of(context)!.translate("addres"),
                  reqiredColor: Colors.white),
              TableCellNetworkWidget(text: address, reqiredColor: Colors.white),
            ],
          ),
          Row(
            children: [
              TableCellWidget(
                  // text: ' area  ',
                  text: AppLocalizations.of(context)!.translate("area"),
                  reqiredColor: Colors.white),
              TableCellNetworkWidget(text: area, reqiredColor: Colors.white),
            ],
          ),
          Row(
            children: [
              TableCellWidget(
                  // text: ' income amount  ',
                  text: AppLocalizations.of(context)!.translate("income"),
                  reqiredColor: Colors.white),
              TableCellNetworkWidget(
                  text: income_amount, reqiredColor: Colors.white),
            ],
          ),
          Material(
            elevation: 3.0, // Set the desired elevation value

            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
          )
        ],
      ),
    );
  }
}
