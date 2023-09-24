import 'package:flutter/material.dart';

final ThemeData myTheme = ThemeData.light().copyWith(
  // Other theme properties...
  appBarTheme:
      const AppBarTheme(backgroundColor: Color.fromARGB(255, 8, 63, 18)),
  scaffoldBackgroundColor: Colors.white,
  // Customize the color of CircularProgressIndicator
  colorScheme: ThemeData.light().colorScheme.copyWith(
      // Set the primary color to your desired color
      primary: const Color.fromARGB(255, 8, 63, 18)),
);
