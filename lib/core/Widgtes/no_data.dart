import 'package:final_shar3ia_mobile/core/localizations/clasess/app_localization.dart';
import 'package:flutter/material.dart';

class NoDataWidget extends StatelessWidget {
  // final String requiredtext;
  final VoidCallback onPressed;

  const NoDataWidget({
    Key? key,
    // required this.requiredtext,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Text(
            AppLocalizations.of(context)!.translate("no_Data"),
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
          ),
          const SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: onPressed,
            child: Container(
              height: 50,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(
                  color: const Color.fromARGB(255, 2, 92, 5),
                  width: 2.5,
                ),
              ),
              child: Center(
                  child: Text(
                AppLocalizations.of(context)!.translate("reload"),
                style: const TextStyle(
                  fontSize: 16.0,
                  color: Color.fromARGB(255, 2, 92, 5),
                ),
              )),
            ),
          ),
        ],
      ),
    );
  }
}
