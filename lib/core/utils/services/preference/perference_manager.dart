import 'package:shared_preferences/shared_preferences.dart';

class PreferenceManager {
  static final PreferenceManager _instance = PreferenceManager._internal();

  factory PreferenceManager() {
    return _instance;
  }

  late final SharedPreferences _preferences;

  Future<void> init() async {
    _preferences = await SharedPreferences.getInstance();
  }

  Future<bool> setBool(String key, bool value) async {
    return await _preferences.setBool(key, value);
  }

  bool getBool(String key) {
    return _preferences.getBool(key) ?? false;
  }

  PreferenceManager._internal();
}
