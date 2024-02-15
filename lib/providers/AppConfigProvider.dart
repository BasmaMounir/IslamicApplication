import 'package:flutter/material.dart';

class AppConfigProvider extends ChangeNotifier {
  String appLanguage = 'en';

  void ChangeLanguage(String newLanguage) {
    if (appLanguage == newLanguage) return;

    appLanguage = newLanguage;
    notifyListeners(); // like set stat function
  }
}