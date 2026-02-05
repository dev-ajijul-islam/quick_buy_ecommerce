import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LanguagesProvider extends ChangeNotifier {
  LanguagesProvider() {
    _loadLanguage();
  }

  void _loadLanguage() async {
    final sharedPreferences = SharedPreferencesAsync();
    final langCode = await sharedPreferences.getString("currentLanguage");
    _currentLanguage = Locale(langCode!);
    notifyListeners();
  }

  Locale? _currentLanguage;

  final List<Locale> _supportedLocale = [Locale("en"), Locale("bn")];

  Locale get currentLanguage => _currentLanguage ?? Locale("en");
  List<Locale> get supportedLocales => _supportedLocale;

  void changeLanguage(Locale lang) async {
    final sharedPreferences = SharedPreferencesAsync();
    _currentLanguage = lang;
    await sharedPreferences.setString("currentLanguage", lang.toString());
    notifyListeners();
  }
}
