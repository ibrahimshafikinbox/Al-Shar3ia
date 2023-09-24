import 'package:final_shar3ia_mobile/core/localizations/clasess/app_localization.dart';
import 'package:final_shar3ia_mobile/features/Login/Wigets/custom_bottom..dart';
import 'package:final_shar3ia_mobile/features/More/widgets/settings/application_settings.dart';
import 'package:flutter/material.dart';

class DeleteAccount extends StatefulWidget {
  const DeleteAccount({super.key});

  @override
  State<DeleteAccount> createState() => _DeleteAccountState();
}

class _DeleteAccountState extends State<DeleteAccount> {
  bool showElevatedButton = false;
  void onPressedButton() {
    setState(() {
      showElevatedButton = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Settings_Item(
          text: AppLocalizations.of(context)!.translate("delete_acc"),
          settingIcon: Icons.delete_outlined,
          onPressed: onPressedButton,
        ),
        if (showElevatedButton)
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.white, // Background color
            ),
            onPressed: () {},
            child: Container(
              height: 200,
              width: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      AppLocalizations.of(context)!.translate("delete_acc"),
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      AppLocalizations.of(context)!.translate("confirm_Delete"),
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.w400),
                    ),
                    //                 "app_setting":"اعدادات التطبيق",
                    // "rest_category":"قائمه الاقسام",
                    // "change_Lng":"تغيير اللغه ",
                    // "done":"موافق",
                    // "chose_lng":"اختار اللغه المفضله",
                    // "terms":"الشروط والاحكام",
                    // "privacy":"الخصوصيه",
                    // "delete_acc":"حذف الحساب",
                    // "logout":"تسجيل الخروج",
                    //  "no_Data":"لا توجد بيانات لعرضها  ",
                    // "search_code":"البحث بالكود  ",
                    // "search_id":"البحث بالرقم القومي  ",
                    // "search_Family":" البحث عن طريق اسم العائله ",
                    // "search_Res":"ناتج البحث ",
                    // "reload":"اعاده",
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        height: 50,
                        width: 150,
                        child: DefaultButton(
                          function: () {},
                          text: AppLocalizations.of(context)!
                              .translate("delete_acc"),
                        ),
                      ),
                      // Spacer(),
                      SizedBox(
                          height: 50,
                          width: 150,
                          child: DefaultButton(
                            function: () {
                              setState(() {
                                showElevatedButton = false;
                              });
                            },
                            text:
                                AppLocalizations.of(context)!.translate("exit"),
                          ))
                    ],
                  )
                ],
              ),
            ),
          ),
      ],
    );
  }
}
