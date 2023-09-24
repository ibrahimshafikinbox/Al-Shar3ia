import 'package:final_shar3ia_mobile/core/localizations/clasess/app_localization.dart';
import 'package:final_shar3ia_mobile/features/Terms_And_Condition/cubit/get_terms_cubit.dart';
import 'package:flutter/material.dart';

class TermsAndCondiotionBody extends StatelessWidget {
  const TermsAndCondiotionBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Column(children: [
        const SizedBox(
          height: 50,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppLocalizations.of(context)!.translate("terms"),
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        TermsAndConditionCubit.get(context).termsAndConditionModel?.data != null
            ? Text(
                "${TermsAndConditionCubit.get(context).termsAndConditionModel?.data}",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
              )
            : const Center(child: CircularProgressIndicator()),
      ]),
    ]);
  }
}
