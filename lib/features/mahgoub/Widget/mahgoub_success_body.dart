import 'package:final_shar3ia_mobile/core/helpers/navigation_helper.dart';
import 'package:final_shar3ia_mobile/features/Details/View/details_new_file.dart';
import 'package:final_shar3ia_mobile/features/mahgoub/cubit/get_mahgoub_cubit.dart';
import 'package:final_shar3ia_mobile/features/mahgoub/cubit/makePhoneCall_cubit.dart';
import 'package:final_shar3ia_mobile/features/mahgoub/data/has_mahgoub_model/datum.dart';
import 'package:final_shar3ia_mobile/features/Details/View/details.dart';
import 'package:final_shar3ia_mobile/features/student_3elm/widgets/tableDataBuilder.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class MahgoubSuccesBody extends StatefulWidget {
  const MahgoubSuccesBody({super.key});

  @override
  State<MahgoubSuccesBody> createState() => _MahgoubSuccesBodyState();
}

class _MahgoubSuccesBodyState extends State<MahgoubSuccesBody> {
  @override
  Widget build(BuildContext context) {
    HasMahgoubData? hasMahgoubData;
    return Expanded(
      child: ListView.builder(
          itemCount: MahgoubCubit.get(context).hasMahgoubModel?.data?.length,
          itemBuilder: (BuildContext context, int index) {
            var hasMahgoubData =
                MahgoubCubit.get(context).hasMahgoubModel!.data![index];

            return Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: TableDataBuilder(
                id: "${hasMahgoubData.id ?? ""}",
                name: hasMahgoubData.name ?? "",
                title: hasMahgoubData.area?.title ?? "",
                nationalId: hasMahgoubData.nationalId ?? "",
                address: hasMahgoubData.address ?? "",
                detailsOnPressed: () {
                  navigateTo(
                      context,
                      DetailsNewFile(
                        id: MahgoubCubit.get(context)
                            .hasMahgoubModel
                            ?.data?[index]
                            .id,
                      ));
                },
                callOnPressesd: () {
                  MakePhonecallCubit.get(context)
                      .makePhoneCall(hasMahgoubData.mobile.toString());
                },
                locationOnPressed: () {
                  print("location");
                },
                sharenOnPressed: () async {
                  await Share.share("${hasMahgoubData.toJson()}");
                },
              ),
            );
          }),
    );
  }
}
