import 'package:flutter/material.dart';
import 'package:quick_buy/features/auth/presentation/widgets/app_logo.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24),
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
