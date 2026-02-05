import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quick_buy/app/extensions/localization_extension.dart';
import 'package:quick_buy/app/providers/languages_provider.dart';
import 'package:quick_buy/app/providers/theme_provider.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final LanguagesProvider languagesProvider = context
        .read<LanguagesProvider>();
    final ThemeProvider themeProvider = context.read<ThemeProvider>();
    return Scaffold(
      appBar: AppBar(title: Text(context.localization.helloWorld)),
      body: Column(
        children: [
          DropdownMenu(
            initialSelection: languagesProvider.currentLanguage,
            dropdownMenuEntries: [
              ...languagesProvider.supportedLocales.map(
                (e) => DropdownMenuEntry(
                  value: e,
                  label: e.languageCode.toUpperCase(),
                ),
              ),
            ],
            onSelected: (value) => languagesProvider.changeLanguage(value!),
          ),
          DropdownMenu(
            initialSelection: themeProvider.themeMode,
            dropdownMenuEntries: [
              ...themeProvider.supportedThemeModes.map(
                (e) => DropdownMenuEntry(
                  value: e,
                  label: e == .system
                      ? "System"
                      : e == .light
                      ? "Light"
                      : "Dark",
                ),
              ),
            ],
            onSelected: (value) => themeProvider.changeTheme(value!),
          ),
        ],
      ),
    );
  }
}
