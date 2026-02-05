import 'package:flutter/material.dart';
import 'package:quick_buy/l10n/app_localizations.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(AppLocalizations.of(context)!.helloWorld.toString()),),
    );
  }
}
