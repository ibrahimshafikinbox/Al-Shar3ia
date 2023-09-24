import 'package:final_shar3ia_mobile/core/Widgtes/no_data.dart';
import 'package:final_shar3ia_mobile/core/localizations/clasess/app_localization.dart';
import 'package:final_shar3ia_mobile/features/Privacy/View/Widgets/privacy_body.dart';
import 'package:final_shar3ia_mobile/features/Privacy/cubit/get_privacy_cubit.dart';
import 'package:final_shar3ia_mobile/features/Privacy/cubit/get_privacy_stete.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PrivacyView extends StatefulWidget {
  const PrivacyView({super.key});

  @override
  State<PrivacyView> createState() => _PrivacyViewState();
}

class _PrivacyViewState extends State<PrivacyView> {
  @override
  // void initState() {
  //   super.initState();
  //   PrivacyCubit.get(context).getPrivacy(context);
  // }
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      PrivacyCubit.get(context).getPrivacy(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(AppLocalizations.of(context)!.translate("privacy"))),
      body: BlocBuilder<PrivacyCubit, PrivacyState>(
        builder: (context, state) {
          if (state is GetPrivacyLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is GetPrivacySuccess) {
            return const PrivacyBody();
          } else if (state is GetPrivacyError) {
            return NoDataWidget(
              // requiredtext: "reload",
              onPressed: () {
                PrivacyCubit.get(context).getPrivacy(context);
              },
            );
          } else {
            return const Center(
              child: Text('there is proplem '),
            );
          }
        },
      ),
    );
  }
}
