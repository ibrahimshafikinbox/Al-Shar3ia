import 'package:final_shar3ia_mobile/core/localizations/clasess/app_localization.dart';
import 'package:flutter/material.dart';

import 'package:final_shar3ia_mobile/features/More/widgets/settings/List_Of_Settings.dart';

class application_settings extends StatefulWidget {
  const application_settings({super.key});

  @override
  State<application_settings> createState() => _application_settingsState();
}

class _application_settingsState extends State<application_settings> {
  bool showSettings = false;

  void ShowApplicationSettings() {
    setState(() {
      showSettings = !showSettings;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(color: Color.fromARGB(255, 244, 242, 242)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  AppLocalizations.of(context)!.translate("app_setting"),
                  style: TextStyle(color: Colors.black, fontSize: 17),
                ),
                Spacer(),
                IconButton(
                  icon: Icon(
                    Icons.arrow_drop_down,
                    size: 25,
                  ),
                  onPressed: ShowApplicationSettings,
                )
              ],
            ),
          ),
        ),
        if (showSettings) const List_Of_Settings()
      ],
    );
  }
}

class Settings_Item extends StatelessWidget {
  final String text;
  final IconData settingIcon;
  final VoidCallback onPressed;
  const Settings_Item({
    Key? key,
    required this.text,
    required this.settingIcon,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        elevation: 1 / 5,
        child: Row(
          children: [
            IconButton(
              onPressed: onPressed,
              icon: Icon(
                settingIcon,
                color: Colors.green,
              ),
            ),
            SizedBox(
              width: 40,
            ),
            Text(
              "$text ",
              style: TextStyle(color: Colors.black, fontSize: 16),
            )
          ],
        ),
      ),
    );
  }
}
