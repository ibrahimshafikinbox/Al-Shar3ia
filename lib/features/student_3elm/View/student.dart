import 'package:final_shar3ia_mobile/core/localizations/clasess/app_localization.dart';
import 'package:final_shar3ia_mobile/features/More/cubit/families_cases_cubit/families_state.dart';
import 'package:final_shar3ia_mobile/features/More/cubit/families_cases_cubit/get_families_cubit.dart';
import 'package:final_shar3ia_mobile/features/student_3elm/widgets/TableOfData.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StudentView extends StatefulWidget {
  const StudentView({super.key});

  @override
  State<StudentView> createState() => _StudentViewState();
}

class _StudentViewState extends State<StudentView> {
  @override
  void initState() {
    super.initState();
    FamiliesCubit.get(context).getStudentDetails();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => FamiliesCubit(),
      child: BlocConsumer<FamiliesCubit, familiesState>(
          listener: (context, state) {},
          builder: (context, state) {
            return Scaffold(
              appBar: AppBar(
                  title: Text(
                AppLocalizations.of(context)!.translate("student"),
              )),
              body: Column(
                children: [
                  TableOfData(),
                ],
              ),
            );
          }),
    );
  }
}
