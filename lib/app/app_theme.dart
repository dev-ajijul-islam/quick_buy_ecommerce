import 'package:flutter/material.dart';
import 'package:quick_buy/app/app_colors.dart';

class AppTheme {
  static final ThemeData _lightTheme = ThemeData(
    colorSchemeSeed: AppColors.themeColor,
    brightness: .light,
    progressIndicatorTheme: _circularProgressIndicatorTheme,
    scaffoldBackgroundColor: Colors.white,
    textTheme: _textTheme,
    inputDecorationTheme: _inputDecorationThemeData,
    filledButtonTheme: _filledButtonThemeData,
  );
  static final ThemeData _darkTheme = ThemeData(
    colorSchemeSeed: AppColors.themeColor,
    brightness: .dark,
    progressIndicatorTheme: _circularProgressIndicatorTheme,
    textTheme: _textTheme,
    inputDecorationTheme: _inputDecorationThemeData,
    filledButtonTheme: _filledButtonThemeData,
  );

  static ProgressIndicatorThemeData get _circularProgressIndicatorTheme =>
      ProgressIndicatorThemeData(color: AppColors.themeColor);

  static TextTheme get _textTheme =>
      TextTheme(titleLarge: TextStyle(fontWeight: FontWeight.w700));

  static InputDecorationThemeData get _inputDecorationThemeData =>
      InputDecorationThemeData(
        hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
        contentPadding: .symmetric(horizontal: 10, vertical: 0),
        border: OutlineInputBorder(
          borderRadius: .circular(10),
          borderSide: BorderSide(color: AppColors.themeColor),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: .circular(10),
          borderSide: BorderSide(color: AppColors.themeColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: .circular(10),
          borderSide: BorderSide(color: AppColors.themeColor),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: .circular(10),
          borderSide: BorderSide(color: Colors.grey),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: .circular(10),
          borderSide: BorderSide(color: Colors.red),
        ),
      );

  static final FilledButtonThemeData _filledButtonThemeData =
      FilledButtonThemeData(
        style: FilledButton.styleFrom(
          backgroundColor: AppColors.themeColor,
          shape: RoundedRectangleBorder(borderRadius: .circular(10)),
        ),
      );

  static ThemeData get lightTheme => _lightTheme;
  static ThemeData get darkTheme => _darkTheme;
}
