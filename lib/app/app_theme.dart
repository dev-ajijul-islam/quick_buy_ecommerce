import 'package:flutter/material.dart';
import 'package:quick_buy/app/app_colors.dart';

class AppTheme {
  static final ThemeData _lightTheme = ThemeData(
    colorSchemeSeed: AppColors.themeColor,
    brightness: .light,
  );
  static final ThemeData _darkTheme = ThemeData(
    colorSchemeSeed: AppColors.themeColor,
    brightness: .dark,
  );

  static ThemeData get lightTheme => _lightTheme;
  static ThemeData get darkTheme => _darkTheme;
}
