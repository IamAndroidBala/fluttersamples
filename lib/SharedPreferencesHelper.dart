
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesHelper {

  /// ------------------------------------------------------------
  /// Method that returns values of param
  /// ------------------------------------------------------------

  static Future<String> getValues(String param) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    return prefs.getString(param) ?? '';
  }


  /// ------------------------------------------------------------
  /// Method that sets value for key
  /// ------------------------------------------------------------

  static Future<bool> setValues(String key, String value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    return prefs.setString(key, value);
  }



  static Future<bool> getBooleanValues(String param) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    return prefs.getBool(param) ?? false;
  }

  static Future<bool> setBooleanValues(String key, bool value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    return prefs.setBool(key, value);
  }


}