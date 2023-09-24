import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:conditional_builder_null_safety/example/example.dart';
import 'package:final_shar3ia_mobile/core/Constants/Local_constants/local_constants.dart';
import 'package:final_shar3ia_mobile/core/helpers/Cach_helper.dart';
import 'package:final_shar3ia_mobile/core/helpers/navigation_helper.dart';
import 'package:final_shar3ia_mobile/core/localizations/clasess/app_localization.dart';
import 'package:final_shar3ia_mobile/core/localizations/clasess/constants.dart';
import 'package:final_shar3ia_mobile/core/localizations/clasess/language.dart';
import 'package:final_shar3ia_mobile/features/Login/Cubits/Login_Cubit.dart';
import 'package:final_shar3ia_mobile/features/Login/Cubits/Login_States.dart';
import 'package:final_shar3ia_mobile/features/Login/Wigets/Custom_Form_Field.dart';
import 'package:final_shar3ia_mobile/features/Login/Wigets/custom_bottom..dart';
import 'package:final_shar3ia_mobile/features/layout/views/Home_View.dart';
import 'package:final_shar3ia_mobile/main.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginView extends StatefulWidget {
  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  var PhoneController = TextEditingController();

  var passwordController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => LoginCubit(),
      child: BlocConsumer<LoginCubit, LoginState>(
        listener: (BuildContext context, state) async {
          if (state is LoginSuccess) {
            Fluttertoast.showToast(
              msg: AppLocalizations.of(context)!.translate("success"),
              toastLength: Toast.LENGTH_LONG,
              gravity: ToastGravity.BOTTOM,
              timeInSecForIosWeb: 3,
              backgroundColor: Colors.green,
              textColor: Colors.white,
              fontSize: 16.0,
            ).then((value) {
              navigateAndFinish(
                context,
                const Home_View(),
              );
            });
          }
          if (state is LoginError) {
            Fluttertoast.showToast(
              msg: AppLocalizations.of(context)!.translate("there_Proplem"),
              // there_Proplem
              toastLength: Toast.LENGTH_LONG,
              gravity: ToastGravity.BOTTOM,
              timeInSecForIosWeb: 5,
              backgroundColor: Colors.red,
              textColor: Colors.white,
              fontSize: 16.0,
            );
          }
        },
        builder: (BuildContext context, state) {
          return Scaffold(
            body: Form(
              key: formKey,
              child: ListView(
                children: [
                  SizedBox(
                    height: 250,
                    child: Image.asset("assets/Images/logo.png"),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      AppLocalizations.of(context)!.translate("login"),
                      style: TextStyle(
                          color: Color.fromARGB(255, 37, 126, 40),
                          fontWeight: FontWeight.w600,
                          fontSize: 18),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      AppLocalizations.of(context)!.translate("hello_again"),
                      // required
                      style: TextStyle(
                          color: Color.fromARGB(255, 113, 111, 111),
                          // fontWeight: FontWeight.w600,
                          fontSize: 14),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: DefaultFormField(
                      controller: PhoneController,
                      type: TextInputType.visiblePassword,
                      // label: "phone",
                      hint: AppLocalizations.of(context)!.translate("phone"),

                      // prefix: Icons.phone,
                      onValidate: (String? value) {
                        if (value == null || value.isEmpty) {
                          return AppLocalizations.of(context)!
                              .translate("required");
                        }
                        return null;
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: DefaultFormField(
                      controller: passwordController,
                      type: TextInputType.visiblePassword,
                      // label: "Password",
                      hint: AppLocalizations.of(context)!.translate("pass"),
                      // prefix: Icons.lock_outline,
                      suffixPressed: () {},
                      onValidate: (String? value) {
                        if (value == null || value.isEmpty) {
                          return AppLocalizations.of(context)!
                              .translate("required");
                        }
                        return null;
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  ConditionalBuilder(
                    condition: State is! LoginLoading,
                    builder: (BuildContext context) => DefaultButton(
                      text: AppLocalizations.of(context)!.translate("login"),
                      function: () {
                        if (formKey.currentState!.validate()) {
                          LoginCubit.get(context).loginuser(
                            phone: PhoneController.text,
                            password: passwordController.text,
                          );
                        }
                      },
                    ),
                    fallback: (BuildContext context) =>
                        const Center(child: CircularProgressIndicator()),
                  ),
                  // Row(
                  //   children: <Widget>[
                  //     Padding(
                  //       padding: const EdgeInsets.all(8.0),
                  //       child: DropdownButton<Language>(
                  //         underline: const SizedBox(),
                  //         icon: const Icon(
                  //           Icons.language,
                  //           color: Colors.black,
                  //         ),
                  //         onChanged: (Language? language) async {
                  //           if (language != null) {
                  //             Locale _locale = await setLocale(
                  //               language.languageCode,
                  //             );
                  //             MyApp.setLocale(context, _locale);
                  //           }
                  //         },
                  //         items: Language.languageList()
                  //             .map<DropdownMenuItem<Language>>(
                  //               (e) => DropdownMenuItem<Language>(
                  //                 value: e,
                  //                 child: Row(
                  //                   mainAxisAlignment:
                  //                       MainAxisAlignment.spaceAround,
                  //                   children: <Widget>[
                  //                     Text(
                  //                       e.flag,
                  //                       style: const TextStyle(fontSize: 30),
                  //                     ),
                  //                     Text(e.name)
                  //                   ],
                  //                 ),
                  //               ),
                  //             )
                  //             .toList(),
                  //       ),
                  //     ),
                  //   ],
                  // )
                  // // Text(AppLocalizations.of(context)!.appSettings),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
