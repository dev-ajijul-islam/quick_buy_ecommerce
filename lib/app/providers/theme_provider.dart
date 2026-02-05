import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.light;

  final List<ThemeMode> _supportedThemes = [
    ThemeMode.system,
    ThemeMode.light,
    ThemeMode.dark,
  ];

  List<ThemeMode> get supportedThemeModes => _supportedThemes;
  ThemeMode get themeMode => _themeMode;

  void changeTheme(ThemeMode themeMode) {
    _themeMode = themeMode;
    notifyListeners();
  }
}
