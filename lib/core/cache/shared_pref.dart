import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {

  static late SharedPreferences preferences;

  /// Initialize the SharedPreferences instance
  static Future<void> init() async {
    preferences = await SharedPreferences.getInstance();
  }

  /// Retrieve a stored token or other string data
  static String? getToken(String key) {
    return preferences.getString(key);
  }

  /// Delete a token or other data by key
  Future<bool> deleteToken(String key) async {
    return preferences.remove(key);
  }

  /// Save various types of data
  static Future<bool> saveData(String key, dynamic value) async {
    if (value is String) {
      return preferences.setString(key, value);
    } else if (value is double) {
      return preferences.setDouble(key, value);
    } else if (value is bool) {
      return preferences.setBool(key, value);
    } else if (value is int) {
      return preferences.setInt(key, value);
    } else {
      return false;
    }
  }
}
