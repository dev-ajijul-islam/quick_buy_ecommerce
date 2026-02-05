import 'package:flutter/material.dart';
import 'package:quick_buy/features/auth/presentation/screens/otp_code_screen.dart';
import 'package:quick_buy/features/auth/presentation/screens/sign_up_screen.dart';
import 'package:quick_buy/features/auth/presentation/screens/splash_screen.dart';
import 'package:quick_buy/features/auth/presentation/screens/welcome_screen.dart';

class AppRoutes {
  static Route<dynamic> routes(RouteSettings setting) {
    Widget widget = SizedBox();
    switch (setting.name) {
      case SplashScreen.name:
        widget = SplashScreen();
        break;
      case SignUpScreen.name:
        widget = SignUpScreen();
        break;
      case WelcomeScreen.name:
        widget = WelcomeScreen();
        break;
        case OtpCodeScreen.name:
        widget = OtpCodeScreen();
        break;

    }

    return MaterialPageRoute(builder: (context) => widget);
  }
}
