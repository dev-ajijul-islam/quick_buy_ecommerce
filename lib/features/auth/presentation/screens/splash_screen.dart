import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quick_buy/app/providers/languages_provider.dart';
import 'package:quick_buy/l10n/app_localizations.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final LanguagesProvider languagesProvider = context
        .read<LanguagesProvider>();
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.helloWorld.toString()),
      ),
      body: Center(
        child: DropdownMenu(
          initialSelection: languagesProvider.currentLanguage,
          dropdownMenuEntries: [
            ...languagesProvider.supportedLocales.map(
              (e) => DropdownMenuEntry(
                value: e,
                label: e.languageCode.toUpperCase(),
              ),
            ),
          ],
          onSelected: (value) => languagesProvider.changeLanguage(value!),
        ),
      ),
    );
  }
}
