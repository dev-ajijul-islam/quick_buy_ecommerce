import "package:flutter/material.dart";
import "package:flutter_localizations/flutter_localizations.dart";
import "package:quick_buy/app/app_routes.dart";

import "../l10n/app_localizations.dart";
import '../app/app_theme.dart';

class QuickBuy extends StatelessWidget {
  const QuickBuy({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: AppRoutes.routes,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [Locale("en"), Locale("bn")],
      locale: Locale("bn"),
    );
  }
}
