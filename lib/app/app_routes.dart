import 'package:flutter/material.dart';
import 'package:quick_buy/features/auth/presentation/screens/splash_screen.dart';

class AppRoutes {
  static Route<dynamic> routes(RouteSettings setting) {
    Widget widget = SizedBox();
    switch (setting.name) {
      case "/":
        widget = const SplashScreen();
        break;
    }

    return MaterialPageRoute(builder: (context) => widget);
  }
}
