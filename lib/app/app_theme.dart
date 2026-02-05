import 'package:flutter/material.dart';
import 'package:quick_buy/app/app_colors.dart';

class AppTheme {
  static final ThemeData _lightTheme = ThemeData(
    colorSchemeSeed: AppColors.themeColor,
    brightness: .light,
    progressIndicatorTheme: _circularProgressIndicatorTheme,
    scaffoldBackgroundColor: Colors.white,
  );
  static final ThemeData _darkTheme = ThemeData(
    colorSchemeSeed: AppColors.themeColor,
    brightness: .dark,
    progressIndicatorTheme: _circularProgressIndicatorTheme,
  );

  static ProgressIndicatorThemeData get _circularProgressIndicatorTheme =>
      ProgressIndicatorThemeData(color: AppColors.themeColor);

  static ThemeData get lightTheme => _lightTheme;
  static ThemeData get darkTheme => _darkTheme;
}
