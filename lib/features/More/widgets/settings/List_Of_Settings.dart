import 'package:final_shar3ia_mobile/core/helpers/navigation_helper.dart';
import 'package:final_shar3ia_mobile/core/localizations/clasess/app_localization.dart';
import 'package:final_shar3ia_mobile/features/Login/Wigets/custom_bottom..dart';
import 'package:final_shar3ia_mobile/features/More/widgets/settings/Change_Language.dart';
import 'package:final_shar3ia_mobile/features/More/widgets/settings/LogOut.dart';
import 'package:final_shar3ia_mobile/features/More/widgets/settings/application_settings.dart';
import 'package:final_shar3ia_mobile/features/More/widgets/settings/delete_account.dart';
import 'package:final_shar3ia_mobile/features/Privacy/View/privacy_view.dart';
import 'package:final_shar3ia_mobile/features/Terms_And_Condition/View/terms_and_condition_view.dart';
import 'package:flutter/material.dart';

class List_Of_Settings extends StatefulWidget {
  const List_Of_Settings({super.key});

  @override
  State<List_Of_Settings> createState() => _List_Of_SettingsState();
}

class _List_Of_SettingsState extends State<List_Of_Settings> {
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
          //            "more":"اكثر",
          // "app_setting":"اعدادات التطبيق",
          // "rest_category":"قائمه الاقسام",
          // "change_Lng":"تغيير اللغه ",
          // "done":"موافق",
          // "chose_lng":"اختار اللغه المفضله",
          // "terms":"الشروط والاحكام",
          // "privacy":"الخصوصيه",
          // "delete_acc":"حذف الحساب",
          text: AppLocalizations.of(context)!.translate("change_Lng"),
          settingIcon: Icons.language,
          onPressed: () {
            showModalBottomSheet(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              context: context,
              builder: (BuildContext context) {
                return const LanguageChangeWidget();
              },
            );
          },
        ),
        Settings_Item(
          text: AppLocalizations.of(context)!.translate("terms"),
          settingIcon: Icons.terminal_sharp,
          onPressed: () {
            navigateTo(
              context,
              const TermsandConditionView(),
            );
          },
        ),
        Settings_Item(
          text: AppLocalizations.of(context)!.translate("privacy"),
          settingIcon: Icons.privacy_tip_outlined,
          onPressed: () {
            navigateTo(
              context,
              const PrivacyView(),
            );
          },
        ),
        const DeleteAccount(),
        // Settings_Item(
        //   text: "LogOut ",
        //   settingIcon: Icons.logout,
        //   onPressed: () {},
        // ),
        const LogOut(),
      ],
    );
  }
}
