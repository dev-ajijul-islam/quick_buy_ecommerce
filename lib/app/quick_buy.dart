import "package:flutter/material.dart";
import "package:quick_buy/features/auth/presentation/screens/splash_screen.dart";


class QuickBuy extends StatelessWidget {
  const QuickBuy({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: SplashScreen(),
    );
  }
}
