import 'package:flutter/material.dart';

class AppConfigProvider extends ChangeNotifier {
  String appLanguage = 'en';
  ThemeMode mode = ThemeMode.light;

  void ChangeLanguage(String newLanguage) {
    if (appLanguage == newLanguage) return;

    appLanguage = newLanguage;
    notifyListeners(); // like set stat function
  }

  void ChangeThemeMode(ThemeMode themeMode) {
    if (mode == themeMode) return;
    mode = themeMode;
    notifyListeners();
  }

  bool isDarkMode() {
    return mode == ThemeMode.dark;
  }
}
