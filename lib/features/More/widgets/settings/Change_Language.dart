import 'package:final_shar3ia_mobile/core/localizations/clasess/constants.dart';
import 'package:final_shar3ia_mobile/core/localizations/clasess/language.dart';
import 'package:final_shar3ia_mobile/features/Login/Wigets/custom_bottom..dart';
import 'package:final_shar3ia_mobile/main.dart';
import 'package:flutter/material.dart';

class LanguageChangeWidget extends StatefulWidget {
  const LanguageChangeWidget({super.key});

  @override
  State<LanguageChangeWidget> createState() => _LanguageChangeWidgetState();
}

class _LanguageChangeWidgetState extends State<LanguageChangeWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 200,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(100),
            topLeft: Radius.circular(100),
          ),
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const Center(
              child: Text(
                "Chose the Language ",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 182, 137, 119)),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text("change application language"),
                  Spacer(),
                  DropdownButton<Language>(
                    underline: const SizedBox(),
                    icon: const Icon(
                      Icons.language,
                      color: Color.fromARGB(255, 22, 120, 26),
                    ),
                    onChanged: (Language? language) async {
                      if (language != null) {
                        Locale _locale = await setLocale(
                          language.languageCode,
                        );
                        MyApp.setLocale(context, _locale);
                      }
                    },
                    items: Language.languageList()
                        .map<DropdownMenuItem<Language>>(
                          (e) => DropdownMenuItem<Language>(
                            value: e,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                Text(
                                  e.flag,
                                  style: const TextStyle(fontSize: 30),
                                ),
                                Text(e.name)
                              ],
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ],
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.all(15.0),
            //   child: Row(
            //     children: const [
            //       Text(
            //         "العربيه ",
            //         style: TextStyle(fontSize: 18),
            //       ),
            //       Spacer(),
            //       Icon(Icons.circle_outlined)
            //     ],
            //   ),
            // ),
            // const SizedBox(
            //   height: 25,
            // ),
            // Padding(
            //   padding: const EdgeInsets.all(15.0),
            //   child: Row(
            //     children: const [
            //       Text(
            //         "English ",
            //         style: TextStyle(fontSize: 16),
            //       ),
            //       Spacer(),
            //       Icon(Icons.circle_outlined)
            //     ],
            //   ),
            // ),

            // const SizedBox(
            //   height: 40,
            // ),
            // DefaultButton(function: () {}, text: "Done "),
          ],
        ),
      ),
    );
  }
}
