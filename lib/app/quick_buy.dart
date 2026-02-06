import "package:flutter/material.dart";
import "package:flutter_localizations/flutter_localizations.dart";
import "package:provider/provider.dart";
import "package:quick_buy/app/app_routes.dart";
import "package:quick_buy/app/providers/languages_provider.dart";
import "package:quick_buy/app/providers/theme_provider.dart";
import "package:quick_buy/features/auth/providers/otp_code_provider.dart";

import "../l10n/app_localizations.dart";
import '../app/app_theme.dart';

class QuickBuy extends StatelessWidget {
  const QuickBuy({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => LanguagesProvider()),
        ChangeNotifierProvider(create: (context) => ThemeProvider()),
        ChangeNotifierProvider(create: (context) => OtpCodeProvider()),
      ],
      child: Consumer<LanguagesProvider>(
        builder: (_, languageProvider, _) => Consumer<ThemeProvider>(
          builder: (_, themeProvider, _) => MaterialApp(
            onGenerateRoute: AppRoutes.routes,
            theme: AppTheme.lightTheme,
            darkTheme: AppTheme.darkTheme,
            themeMode: themeProvider.themeMode,
            localizationsDelegates: [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: languageProvider.supportedLocales,
            locale: languageProvider.currentLanguage,
          ),
        ),
      ),
    );
  }
}
