import 'package:final_shar3ia_mobile/core/localizations/clasess/app_localization.dart';
import 'package:final_shar3ia_mobile/features/Privacy/cubit/get_privacy_cubit.dart';
import 'package:flutter/material.dart';

class PrivacyBody extends StatelessWidget {
  const PrivacyBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children:   [
                Text(
                AppLocalizations.of(context)!.translate("privacy"),
                  style:  const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "${PrivacyCubit.get(context).privacyModel?.data}",
            style: const TextStyle(
                color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500),
          )
        ],
      ),
    ]);
  }
}
