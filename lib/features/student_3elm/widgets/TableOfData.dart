import 'package:final_shar3ia_mobile/core/helpers/navigation_helper.dart';
import 'package:final_shar3ia_mobile/features/Details/View/details.dart';
import 'package:final_shar3ia_mobile/features/Details/View/details_new_file.dart';
import 'package:final_shar3ia_mobile/features/More/cubit/families_cases_cubit/get_families_cubit.dart';
import 'package:final_shar3ia_mobile/features/More/data/family_student_model/datum.dart';
import 'package:final_shar3ia_mobile/features/More/data/family_student_model/family_student_model.dart';
import 'package:final_shar3ia_mobile/features/mahgoub/cubit/makePhoneCall_cubit.dart';

import 'package:final_shar3ia_mobile/features/student_3elm/widgets/tableDataBuilder.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class TableOfData extends StatefulWidget {
  @override
  State<TableOfData> createState() => _TableOfDataState();
}

class _TableOfDataState extends State<TableOfData> {
  @override
  void initState() {
    super.initState();
    FamiliesCubit.get(context).getStudentDetails();
  }

  @override
  Widget build(BuildContext context) {
    // FamilyStudentModel? familyModel;
    var cubit = FamiliesCubit.get(context);

    return Expanded(
      child: ListView.builder(
          itemCount: cubit.familyStudentModel?.data?.length,
          itemBuilder: (BuildContext context, int index) {
            FamilyStudentData data = cubit.familyStudentModel!.data![index];

            return TableDataBuilder(
              id: "${data.id}",
              name: "${data.name}",
              title: data.area?.title ?? "",
              nationalId: "${data.nationalId}",
              address: "${data.address}",
              // onTap: () {},
              callOnPressesd: () {
                MakePhonecallCubit.get(context)
                    .makePhoneCall(data.mobile.toString());
              },
              detailsOnPressed: () {
                navigateTo(context, DetailsNewFile(id: data.id));
              },
              locationOnPressed: () {},
              sharenOnPressed: () async {
                await Share.share("${data.toJson()}");
              },
            );
          }),
    );
  }
}
