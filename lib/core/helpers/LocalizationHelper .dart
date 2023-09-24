import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class LocalizationHelper {
  static String getCurrentLanguage(BuildContext context) {
    Locale currentLocale = Localizations.localeOf(context);
    String languageCode = currentLocale.languageCode;
    return languageCode;
  }
}
