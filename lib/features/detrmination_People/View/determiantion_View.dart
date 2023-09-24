import 'package:final_shar3ia_mobile/core/Widgtes/no_data.dart';
import 'package:final_shar3ia_mobile/core/localizations/clasess/app_localization.dart';
import 'package:final_shar3ia_mobile/features/detrmination_People/cubit/get_determinatiom_state.dart';
import 'package:final_shar3ia_mobile/features/detrmination_People/cubit/get_determination_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetermiantionPopleView extends StatefulWidget {
  const DetermiantionPopleView({super.key});

  @override
  State<DetermiantionPopleView> createState() => _DetermiantionPopleViewState();
}

class _DetermiantionPopleViewState extends State<DetermiantionPopleView> {
  @override
  void initState() {
    super.initState();
    DeterminationPeopleCubit.get(context).getDeterminationPeople();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DeterminationPeopleCubit(),
      child: BlocConsumer<DeterminationPeopleCubit, DeterminationState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: Text(
                AppLocalizations.of(context)!.translate("determination"),
              ),
            ),
            body: Column(
              children: [
                DeterminationPeopleCubit.get(context)
                            .peopoleOfDeterminationModel
                            ?.data
                            ?.length ==
                        0
                    ? NoDataWidget(onPressed: () {
                        DeterminationPeopleCubit.get(context)
                            .getDeterminationPeople();
                      })
                    : NoDataWidget(
                        // "reload":"اعاده",
                        // "no_Data":"لا توجد بيانات لعرضها  ",

                        onPressed: () {
                          DeterminationPeopleCubit.get(context)
                              .getDeterminationPeople();
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
