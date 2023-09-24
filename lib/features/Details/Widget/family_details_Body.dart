import 'package:final_shar3ia_mobile/core/Widgtes/custom_table.dart';
import 'package:final_shar3ia_mobile/features/Details/Cubit/gat_datails_cubit.dart';
import 'package:flutter/material.dart';

class FamilyDetailsBody extends StatefulWidget {
  const FamilyDetailsBody({super.key});

  @override
  State<FamilyDetailsBody> createState() => _FamilyDetailsBodyState();
}

class _FamilyDetailsBodyState extends State<FamilyDetailsBody> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // DetailsCubit.get(context).getDetails(widget.id);
  }

  @override
  Widget build(BuildContext context) {
    var detailsCubit = DetailsCubit.get(context).detailsModel?.data;

    return CustomTableCell(
      address: detailsCubit?.address,
      id: '${detailsCubit?.id}',
      name: '${detailsCubit?.name}',
      nationalId: '${detailsCubit?.nationalId}',
      title: '${detailsCubit?.area?.title}',
      category: '${detailsCubit?.category?.title}',
      code: '  ${detailsCubit?.code}',
      mobile: '${detailsCubit?.mobile}',
      number_of_children: '${detailsCubit?.children?.length.toInt()}',
      partner_name: '${detailsCubit?.partnerName}',
      partner_life_status: '${detailsCubit?.partnerLifeStatus}',
      partner_national_id: '${detailsCubit?.partnerNationalId}',
      status: '${detailsCubit?.status}',
      area: '${detailsCubit?.area?.title}',
      income_amount: '${detailsCubit?.incomeAmount}',
    );
  }
}
