import "package:flutter/material.dart";
import "package:quick_buy/app/app_routes.dart";
import '../app/app_theme.dart';

class QuickBuy extends StatelessWidget {
  const QuickBuy({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: AppRoutes.routes,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
    );
  }
}
