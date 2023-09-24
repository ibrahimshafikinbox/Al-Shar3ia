import 'package:final_shar3ia_mobile/core/helpers/navigation_helper.dart';
import 'package:final_shar3ia_mobile/core/localizations/clasess/app_localization.dart';
import 'package:final_shar3ia_mobile/features/Login/Views/login_View.dart';
import 'package:final_shar3ia_mobile/features/Login/Wigets/custom_bottom..dart';
import 'package:final_shar3ia_mobile/features/More/widgets/settings/application_settings.dart';
import 'package:flutter/material.dart';

class LogOut extends StatefulWidget {
  const LogOut({super.key});

  @override
  State<LogOut> createState() => _LogOutState();
}

class _LogOutState extends State<LogOut> {
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
          text: AppLocalizations.of(context)!.translate("logout"),
          settingIcon: Icons.logout_outlined,
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
                      AppLocalizations.of(context)!.translate("logout"),
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      AppLocalizations.of(context)!.translate("loggedd_Out"),
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.w400),
                    ),
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
                          function: () {
                            navigateTo(context, LoginView());
                          },
                          text:
                              AppLocalizations.of(context)!.translate("logout"),
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
