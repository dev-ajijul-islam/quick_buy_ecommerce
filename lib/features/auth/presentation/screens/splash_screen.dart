import 'package:flutter/material.dart';
import 'package:quick_buy/features/auth/presentation/screens/welcome_screen.dart';
import 'package:quick_buy/features/auth/presentation/widgets/app_logo.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  static const String name = "/";

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    _navigateToNextScreen();
    super.initState();
  }

  Future<void> _navigateToNextScreen() async {
    await Future.delayed(Duration(seconds: 3));
    if (mounted) {
      Navigator.pushReplacementNamed(context, WelcomeScreen.name);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(24),
        child: Column(
          children: [
            Spacer(),
            AppLogo(),
            Spacer(),
            Align(child: CircularProgressIndicator()),
            SizedBox(height: 70),
          ],
        ),
      ),
    );
  }
}
