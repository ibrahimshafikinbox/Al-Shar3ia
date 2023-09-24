import 'package:final_shar3ia_mobile/core/Widgtes/Custom_AppBar.dart';
import 'package:final_shar3ia_mobile/core/Widgtes/no_data.dart';
import 'package:final_shar3ia_mobile/core/localizations/clasess/app_localization.dart';
import 'package:final_shar3ia_mobile/features/mahgoub/Widget/Mahgoub_Loading_body.dart';
import 'package:final_shar3ia_mobile/features/mahgoub/Widget/mahgoub_success_body.dart';
import 'package:final_shar3ia_mobile/features/mahgoub/cubit/get_mahgoub_cubit.dart';
import 'package:final_shar3ia_mobile/features/mahgoub/cubit/get_mahgoub_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MahgoubView extends StatefulWidget {
  const MahgoubView({super.key});

  @override
  State<MahgoubView> createState() => _MahgoubViewState();
}

class _MahgoubViewState extends State<MahgoubView> {
  @override
  void initState() {
    super.initState();
    MahgoubCubit.get(context).getMahgoub();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        const CustomAppBar(requiredappBarText: "mahgoub"),
        BlocBuilder<MahgoubCubit, MahgoubState>(
          builder: (context, state) {
            if (state is GetMahgoubLoading) {
              return const Center(child: MahgoubLoadingBody());
            } else if (state is GetMahgoubSuccess) {
              return const MahgoubSuccesBody();
            } else if (state is GetMahgoubError) {
              return NoDataWidget(
                  // requiredtext:
                  //     AppLocalizations.of(context)!.translate("reload"),
                  onPressed: () {
                MahgoubCubit.get(context).getMahgoub();
              });
            } else {
              return const Center(child: Text('there is proplem '));
            }
          },
        ),
      ],
    ));
  }
}
