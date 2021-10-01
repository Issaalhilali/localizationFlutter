import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:tatutiallocalization/localiation/demo_localization.dart';

String getlang(BuildContext context, String key) {
  return DemoLocalization.of(context)!.translate(key);
}

const String LAGUAGE_CODE = 'languageCode';
const String ENGLISH = "en";
const String ARABIC = 'ar';

Future<Locale> setLocale(String languageCode) async {
  SharedPreferences _prefs = await SharedPreferences.getInstance();
  await _prefs.setString(LAGUAGE_CODE, languageCode);
  return _locale(languageCode);
}

Future<Locale> getLocale() async {
  SharedPreferences _prefs = await SharedPreferences.getInstance();
  String languageCode = _prefs.getString(LAGUAGE_CODE) ?? "en";
  return _locale(languageCode);
}

Locale _locale(String languageCode) {
  switch (languageCode) {
    case ENGLISH:
      return const Locale(ENGLISH, 'US');

    case ARABIC:
      return const Locale(ARABIC, "SA");

    default:
      return const Locale(ARABIC, 'SA');
  }
}
