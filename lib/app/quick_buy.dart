import "package:flutter/material.dart";
import "package:quick_buy/app/app_routes.dart";

class QuickBuy extends StatelessWidget {
  const QuickBuy({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(onGenerateRoute: AppRoutes.routes);
  }
}
