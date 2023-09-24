// import 'package:final_shar3ia_mobile/core/localizations/clasess/app_localization.dart';
// import 'package:final_shar3ia_mobile/features/Details/Cubit/gat_datails_cubit.dart';
// import 'package:final_shar3ia_mobile/features/Login/Cubits/Login_Cubit.dart';
// import 'package:final_shar3ia_mobile/features/Login/Views/login_View.dart';
// import 'package:final_shar3ia_mobile/features/Privacy/cubit/get_privacy_cubit.dart';
// import 'package:final_shar3ia_mobile/features/Terms_And_Condition/cubit/get_terms_cubit.dart';
// import 'package:final_shar3ia_mobile/features/detrmination_People/cubit/get_determination_cubit.dart';
// import 'package:final_shar3ia_mobile/features/layout/views/Home_View.dart';
// import 'package:final_shar3ia_mobile/features/mahgoub/cubit/get_mahgoub_cubit.dart';
// import 'package:final_shar3ia_mobile/features/mahgoub/cubit/makePhoneCall_cubit.dart';
// import 'package:final_shar3ia_mobile/features/patient/cubit/get_patient_cubit.dart';
// import 'package:final_shar3ia_mobile/features/Sesoanl_food_Bank/cubit/Sesonal_food_bank_cubit/sesonal_food_bank_cubit.dart';
// import 'package:final_shar3ia_mobile/features/More/cubit/categories_cubit/get_categories_cubit.dart';
// import 'package:final_shar3ia_mobile/features/More/cubit/families_cases_cubit/get_families_cubit.dart';
// import 'package:final_shar3ia_mobile/features/layout/cubit/cubit.dart';
// import 'package:final_shar3ia_mobile/firebase_options.dart';
// import 'package:final_shar3ia_mobile/temes.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_localizations/flutter_localizations.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp(
//     options: DefaultFirebaseOptions.currentPlatform,
//   );
//   var devicetoken = await FirebaseMessaging.instance.getToken() ?? '';

//   print(" 🚀🚀🚀devicetoken${devicetoken}");
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MultiBlocProvider(
//       providers: [
//         BlocProvider<FamiliesCubit>(
//             create: (context) => FamiliesCubit()..getStudentDetails()),
//         BlocProvider<CategoriesCubit>(
//           create: (context) => CategoriesCubit()..fetchCategories(),
//         ),
//         BlocProvider<AppCubit>(create: (context) => AppCubit()),
//         BlocProvider(create: (context) => MahgoubCubit()),
//         BlocProvider(create: (context) => LoginCubit()),
//         BlocProvider(create: (context) => DetailsCubit(null)),
//         BlocProvider(create: (context) => MakePhonecallCubit("")),
//         BlocProvider(create: (context) => SesoanlFoodBankCubit()),
//         BlocProvider(create: (context) => PatientCubit()),
//         BlocProvider(create: (context) => DeterminationPeopleCubit()),
//         BlocProvider(create: (context) => TermsAndConditionCubit()),
//         BlocProvider(create: (context) => PrivacyCubit()),
//       ],
//       child: MaterialApp(
//           debugShowCheckedModeBanner: false,
//           theme: myTheme,
//           supportedLocales: const [Locale('en'), Locale('ar')],
//           localizationsDelegates: [
//             AppLocalizations.delegate,
//             GlobalMaterialLocalizations.delegate,
//             GlobalWidgetsLocalizations.delegate,
//             GlobalCupertinoLocalizations.delegate
//           ],
//           localeResolutionCallback: (deviceLocale, supportedLocales) {
//             for (var locale in supportedLocales) {
//               if (deviceLocale != null &&
//                   deviceLocale.languageCode == locale.languageCode) {
//                 return deviceLocale;
//               }
//             }

//             return supportedLocales.first;
//           },
//           // locale: Locale("ar"),
//           home: Home_View()),
//     );
//   }
// }

import 'package:final_shar3ia_mobile/core/localizations/clasess/app_localization.dart';
import 'package:final_shar3ia_mobile/core/localizations/clasess/constants.dart';
import 'package:final_shar3ia_mobile/features/Details/Cubit/gat_datails_cubit.dart';
import 'package:final_shar3ia_mobile/features/Login/Cubits/Login_Cubit.dart';
import 'package:final_shar3ia_mobile/features/Login/Views/login_View.dart';
import 'package:final_shar3ia_mobile/features/Privacy/cubit/get_privacy_cubit.dart';
import 'package:final_shar3ia_mobile/features/Terms_And_Condition/cubit/get_terms_cubit.dart';
import 'package:final_shar3ia_mobile/features/detrmination_People/cubit/get_determination_cubit.dart';
import 'package:final_shar3ia_mobile/features/layout/views/Home_View.dart';
import 'package:final_shar3ia_mobile/features/mahgoub/cubit/get_mahgoub_cubit.dart';
import 'package:final_shar3ia_mobile/features/mahgoub/cubit/makePhoneCall_cubit.dart';
import 'package:final_shar3ia_mobile/features/patient/cubit/get_patient_cubit.dart';
import 'package:final_shar3ia_mobile/features/Sesoanl_food_Bank/cubit/Sesonal_food_bank_cubit/sesonal_food_bank_cubit.dart';
import 'package:final_shar3ia_mobile/features/More/cubit/categories_cubit/get_categories_cubit.dart';
import 'package:final_shar3ia_mobile/features/More/cubit/families_cases_cubit/get_families_cubit.dart';
import 'package:final_shar3ia_mobile/features/layout/cubit/cubit.dart';
import 'package:final_shar3ia_mobile/firebase_options.dart';
import 'package:final_shar3ia_mobile/temes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  var devicetoken = await FirebaseMessaging.instance.getToken() ?? '';

  print(" 🚀🚀🚀devicetoken${devicetoken}");
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();

  static void setLocale(BuildContext context, Locale newLocale) {
    _MyAppState? state = context.findAncestorStateOfType<_MyAppState>();
    state?.setLocale(newLocale);
  }
}

class _MyAppState extends State<MyApp> {
  Locale? _locale;
  setLocale(Locale locale) {
    setState(() {
      _locale = locale;
    });
  }

  @override
  void didChangeDependencies() {
    getLocale().then((locale) => setLocale(locale));

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<FamiliesCubit>(
            create: (context) => FamiliesCubit()..getStudentDetails()),
        BlocProvider<CategoriesCubit>(
          create: (context) => CategoriesCubit()..fetchCategories(),
        ),
        BlocProvider<AppCubit>(create: (context) => AppCubit()),
        BlocProvider(create: (context) => MahgoubCubit()),
        BlocProvider(create: (context) => LoginCubit()),
        BlocProvider(create: (context) => DetailsCubit(null)),
        BlocProvider(create: (context) => MakePhonecallCubit("")),
        BlocProvider(create: (context) => SesoanlFoodBankCubit()),
        BlocProvider(create: (context) => PatientCubit()),
        BlocProvider(create: (context) => DeterminationPeopleCubit()),
        BlocProvider(create: (context) => TermsAndConditionCubit()),
        BlocProvider(create: (context) => PrivacyCubit()),
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: myTheme,
          supportedLocales: const [Locale('en'), Locale('ar')],
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate
          ],
        
          locale: _locale,
          home: LoginView()),
    );
  }
}
