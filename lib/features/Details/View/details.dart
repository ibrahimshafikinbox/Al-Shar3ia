// import 'package:final_shar3ia_mobile/core/Widgtes/no_data.dart';
// import 'package:final_shar3ia_mobile/core/helpers/navigation_helper.dart';
// import 'package:final_shar3ia_mobile/features/Details/Cubit/gat_datails_cubit.dart';
// import 'package:final_shar3ia_mobile/features/Details/Cubit/get_details_state.dart';
// import 'package:flutter/material.dart';

// import 'package:final_shar3ia_mobile/core/Widgtes/drob_down_list.dart';
// import 'package:final_shar3ia_mobile/features/Details/Widget/ChildrenDetailsBody.dart';
// import 'package:final_shar3ia_mobile/features/Details/Widget/FinancialDetailsBody.dart';
// import 'package:final_shar3ia_mobile/features/Details/Widget/QuestionWithConfirmationWidget%20.dart';
// import 'package:final_shar3ia_mobile/features/Details/Widget/family_details_Body.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// class DetailsView extends StatefulWidget {
//   final id;

//   const DetailsView({
//     Key? key,
//     required this.id,
//   }) : super(key: key);

//   @override
//   State<DetailsView> createState() => _DetailsViewState();
// }

// class _DetailsViewState extends State<DetailsView> {
//   bool familiesOpened = false;
//   bool childrenOpened = false;
//   bool financialOpened = false;

//   void openfamilyDetails() {
//     setState(() {
//       familiesOpened = !familiesOpened;
//     });
//   }

//   void openChildrenDetails() {
//     setState(() {
//       childrenOpened = !childrenOpened;
//     });
//   }

//   void openFinancialDetails() {
//     setState(() {
//       financialOpened = !financialOpened;
//     });
//   }

//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     DetailsCubit.get(context).getDetails(widget.id);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(" error solved in this screen "),
//       ),
//       body: BlocBuilder<DetailsCubit, DetailsState>(
//         builder: (context, state) {
//           if (state is GetDetailsLoading) {
//             return const Center(
//               child: CircularProgressIndicator(),
//             );
//           } else if (state is GetDetailsSuccess) {
//             return SingleChildScrollView(
//               child: Column(
//                 children: [
//                   const SizedBox(
//                     height: 10,
//                   ),
//                   DropDownList(
//                     requiredtext: "Family details",
//                     onpressed: openfamilyDetails,
//                   ),
//                   if (familiesOpened) const FamilyDetailsBody(),
//                   const SizedBox(
//                     height: 10,
//                   ),
//                   DropDownList(
//                     requiredtext: "Financial Aid",
//                     onpressed: openFinancialDetails,
//                   ),
//                   if (financialOpened)
//                     const Padding(
//                       padding: EdgeInsets.all(8.0),
//                       child: FinancialDetailsBody(),
//                     ),
//                   const SizedBox(
//                     height: 10,
//                   ),
//                   GestureDetector(
//                     onTap: () {
//                       navigateTo(context, const ChildrenDetailsBody());
//                     },
//                     child: DropDownList(
//                       requiredtext: "Children details",
//                       onpressed: openChildrenDetails,
//                     ),
//                   ),
//                   const SizedBox(
//                     height: 10,
//                   ),
//                   QuestionWithConfirmationWidget(
//                     question: "Does the family take form mahgoub or not?",
//                     condition: DetailsCubit.get(context)
//                             .detailsModel
//                             ?.data
//                             ?.mahgoubNumber !=
//                         0,
//                   ),
//                   const SizedBox(
//                     height: 10,
//                   ),
//                   QuestionWithConfirmationWidget(
//                     question: "does the family apper in the reports or not ",
//                     condition: DetailsCubit.get(context)
//                             .detailsModel
//                             ?.data
//                             ?.showInReport !=
//                         0,
//                   ),
//                 ],
//               ),
//             );
//           } else if (state is GetDetailsError) {
//             return NoDataWidget(
//               requiredtext: "reload",
//               onPressed: () {
//                 DetailsCubit.get(context).getDetails(widget.id);
//               },
//             );
//           } else {
//             return NoDataWidget(
//               requiredtext: "reload",
//               onPressed: () {
//                 DetailsCubit.get(context).getDetails(widget.id);
//               },
//             );
//           }
//         },
//       ),
//     );
//   }
// }
// // money help type