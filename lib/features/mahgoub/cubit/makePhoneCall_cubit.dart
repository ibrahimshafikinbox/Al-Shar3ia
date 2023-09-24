import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';

class MakePhonecallCubit extends Cubit<MakePhonecallState> {
  MakePhonecallCubit(
    this.phonenumber,
  ) : super(GetMakePhonecallInitial());

  // static MakePhonecallCubit get(context) => BlocProvider.of(context);
  static MakePhonecallCubit get(BuildContext context) =>
      context.read<MakePhonecallCubit>();
  final phonenumber;
  void makePhoneCall(phonenumber) async {
    if (await canLaunch('tel:$phonenumber')) {
      await launch('tel:$phonenumber');
    } else {
      throw 'Could not launch $phonenumber';
    }
  }
}

abstract class MakePhonecallState {}

class GetMakePhonecallInitial extends MakePhonecallState {}
