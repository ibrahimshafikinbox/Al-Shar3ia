import 'package:final_shar3ia_mobile/core/Widgtes/no_data.dart';
import 'package:final_shar3ia_mobile/core/localizations/clasess/app_localization.dart';
import 'package:final_shar3ia_mobile/features/Terms_And_Condition/Widgets/terms_and_condition_body.dart';
import 'package:final_shar3ia_mobile/features/Terms_And_Condition/cubit/get_terms_cubit.dart';
import 'package:final_shar3ia_mobile/features/Terms_And_Condition/cubit/get_terms_stete.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TermsandConditionView extends StatefulWidget {
  const TermsandConditionView({super.key});

  @override
  State<TermsandConditionView> createState() => _TermsandConditionViewState();
}

class _TermsandConditionViewState extends State<TermsandConditionView> {
  @override
  // void initState() {
  //   super.initState();
  //   TermsAndConditionCubit.get(context).getTermsAndCondition(context);
  // }
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      TermsAndConditionCubit.get(context).getTermsAndCondition(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //    "terms":"الشروط والاحكام",
      // "privacy":"الخصوصيه",
      appBar: AppBar(
        title: Text(
          AppLocalizations.of(context)!.translate("terms"),
        ),
      ),

      body: BlocBuilder<TermsAndConditionCubit, TermsAndConditionState>(
        builder: (context, state) {
          if (state is GetTermsAndConditionLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is GetTermsAndConditionSuccess) {
            return const TermsAndCondiotionBody();
          } else if (state is GetTermsAndConditionError) {
            return NoDataWidget(onPressed: () {
              TermsAndConditionCubit.get(context).getTermsAndCondition(context);
            });
          } else {
            return const Center(child: Text('there is proplem '));
          }
        },
      ),
    );
  }
}
