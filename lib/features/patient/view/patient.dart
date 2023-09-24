import 'package:final_shar3ia_mobile/core/Widgtes/no_data.dart';
import 'package:final_shar3ia_mobile/core/localizations/clasess/app_localization.dart';
import 'package:final_shar3ia_mobile/features/patient/cubit/get_patient_cubit.dart';
import 'package:final_shar3ia_mobile/features/patient/cubit/get_patient_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PatientView extends StatefulWidget {
  const PatientView({super.key});

  @override
  State<PatientView> createState() => _PatientViewState();
}

class _PatientViewState extends State<PatientView> {
  @override
  void initState() {
    super.initState();

    try {
      PatientCubit.get(context).getPatient();
    } finally {
      print(PatientCubit.get(context).patientModel?.data?.length);
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PatientCubit(),
      child: BlocConsumer<PatientCubit, PatientState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: Text(AppLocalizations.of(context)!.translate("patient")),
            ),
            body: Column(
              children: [
                PatientCubit.get(context).patientModel?.data?.length == 0
                    ? NoDataWidget(
                        // requiredtext: " Reload  ",
                        onPressed: () {
                        PatientCubit.get(context).getPatient();
                      })
                    : NoDataWidget(
                        // requiredtext: " Reload  ",
                        onPressed: () {
                          PatientCubit.get(context).getPatient();
                        },
                      ),
              ],
            ),
          );
        },
      ),
    );
  }
}
