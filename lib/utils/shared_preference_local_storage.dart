import 'package:project_beta/constants/shared_preference_const.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceLocalStorage {
  static late SharedPreferences _preferences;

  static init() async {
    _preferences = await SharedPreferences.getInstance();
  }

  static Future<void> setAccessToken(value) async {
    await _preferences.setString(SharedPreferenceConst.ACCESS_TOKEN, value);
  }

  static Future<String?> getAccessToken() async {
    return _preferences.getString(SharedPreferenceConst.ACCESS_TOKEN);
  }

  static Future<void> setRefreshToken(value) async {
    await _preferences.setString(SharedPreferenceConst.REFRESH_TOKEN, value);
  }

  static Future<String?> getRefreshToken() async {
    return _preferences.getString(SharedPreferenceConst.REFRESH_TOKEN);
  }

  static Future<void> setAccessTokenType(value) async {
    await _preferences.setString(SharedPreferenceConst.TOKEN_TYPE, value);
  }

  static Future<String?> getAccessTokenType() async {
    return _preferences.getString(SharedPreferenceConst.TOKEN_TYPE);
  }

  static Future<void> setRefreshTime(value) async {
    await _preferences.setInt(SharedPreferenceConst.REFRESH_TIME, value);
  }

  static Future<int?> getRefreshTime() async {
    return await _preferences.getInt(SharedPreferenceConst.REFRESH_TIME);
  }

  static Future<void> setLastRefreshTime(value) async {
    await _preferences.setInt(SharedPreferenceConst.LAST_REFRESH_TIME, value);
  }

  static Future<int?> getLastRefreshTime() async {
    return await _preferences.getInt(SharedPreferenceConst.LAST_REFRESH_TIME);
  }

  static Future<void> userId(value) async {
    await _preferences.setInt(SharedPreferenceConst.USER_ID, value);
  }

  static Future<int?> getUserId() async {
    return _preferences.getInt(SharedPreferenceConst.USER_ID);
  }
}
