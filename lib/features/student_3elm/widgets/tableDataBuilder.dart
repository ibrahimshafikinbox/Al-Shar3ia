import 'package:final_shar3ia_mobile/core/localizations/clasess/app_localization.dart';
import 'package:flutter/material.dart';

import 'package:final_shar3ia_mobile/features/student_3elm/widgets/Details_Location_Call.dart';
import 'package:final_shar3ia_mobile/features/student_3elm/widgets/TableCellWidget.dart';

class TableDataBuilder extends StatelessWidget {
  final String id;
  final String name;
  final String title;
  final String nationalId;
  final String address;
  final VoidCallback detailsOnPressed;
  final VoidCallback callOnPressesd;
  final VoidCallback locationOnPressed;
  final VoidCallback sharenOnPressed;

  const TableDataBuilder({
    Key? key,
    required this.id,
    required this.name,
    required this.title,
    required this.nationalId,
    required this.address,
    // required this.onTap,
    required this.detailsOnPressed,
    required this.callOnPressesd,
    required this.locationOnPressed,
    required this.sharenOnPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            /*   "bational_Id":"الرقم القومي  ",
    "addres":"العنوان",
    "share":"مشاركه",
    "call":"اتصال",
    "location":"الموقع",
    "details":"البيانات",*/
            children: [
              TableCellWidget(
                text: id,
                reqiredColor: const Color.fromARGB(255, 217, 214, 214),
              ),
              TableCellWidget(
                  text: name,
                  reqiredColor: const Color.fromARGB(255, 165, 214, 167)),
              TableCellWidget(
                text: title,
                reqiredColor: const Color.fromARGB(255, 217, 214, 214),
              )
            ],
          ),
          Row(
            children: [
              TableCellWidget(
                  text: AppLocalizations.of(context)!.translate("bational_Id"),
                  reqiredColor: Colors.white),
              TableCellWidget(text: nationalId, reqiredColor: Colors.white),
            ],
          ),
          Row(
            children: [
              TableCellWidget(
                  text: AppLocalizations.of(context)!.translate("addres"),
                  reqiredColor: Colors.white),
              TableCellWidget(text: address, reqiredColor: Colors.white),
            ],
          ),
          Material(
            elevation: 3.0, // Set the desired elevation value

            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Details_Location_Call(
                      requiredtext:
                          AppLocalizations.of(context)!.translate("details"),
                      onpressed: detailsOnPressed,
                    ),
                  ),
                  Expanded(
                    child: Details_Location_Call(
                      requiredtext:
                          AppLocalizations.of(context)!.translate("call"),
                      onpressed: callOnPressesd,
                    ),
                  ),
                  Expanded(
                    child: Details_Location_Call(
                      requiredtext:
                          AppLocalizations.of(context)!.translate("location"),
                      onpressed: locationOnPressed,
                    ),
                  ),
                  Expanded(
                    child: Details_Location_Call(
                      requiredtext:
                          AppLocalizations.of(context)!.translate("share"),
                      onpressed: sharenOnPressed,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
