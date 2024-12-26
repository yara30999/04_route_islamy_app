import 'package:shared_preferences/shared_preferences.dart';

const String prefsKeyOnboarding = "PREFS_KEY_ONBOARDING";

class AppPreferences {
  static late final SharedPreferences prefs;

  static init() async {
    prefs = await SharedPreferences.getInstance();
  }

  static Future<bool> saveEligibility() async {
    bool result = await prefs.setBool(prefsKeyOnboarding, true);
    return result;
  }

  static bool getEligibility() {
    return prefs.getBool(prefsKeyOnboarding) ?? false;
  }

  static Future<void> removePrefs() async {
    await prefs.remove(prefsKeyOnboarding);
  }
}
