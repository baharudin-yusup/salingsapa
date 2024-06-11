import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

abstract class CacheService {
  Future<bool> remove(String key);

  bool containsKey(String key);

  String? getString(String key);

  bool? getBoolean(String key);

  Map<String, dynamic>? getJson(String key);

  List<String>? getStringList(String key);

  List<Map<String, dynamic>>? getJsonList(String key);

  Future<bool> setString(String key, String value);

  Future<bool> setBoolean(String key, bool value);

  Future<bool> setJson(String key, Map<String, dynamic> value);

  Future<bool> setStringList(String key, List<String> values);

  Future<bool> setJsonList(String key, List<Map<String, dynamic>> values);
}

class CacheServiceImpl implements CacheService {
  final SharedPreferences _sharedPreferences;

  CacheServiceImpl(this._sharedPreferences);

  @override
  Future<bool> setBoolean(String key, bool value) async {
    return await _sharedPreferences.setBool(key, value);
  }

  @override
  Future<bool> setJsonList(
      String key, List<Map<String, dynamic>> values) async {
    final convertedValues = values.map((value) => jsonEncode(value)).toList();
    return await setStringList(key, convertedValues);
  }

  @override
  Future<bool> setString(String key, String value) async {
    return await _sharedPreferences.setString(key, value);
  }

  @override
  Future<bool> setStringList(String key, List<String> values) async {
    return await _sharedPreferences.setStringList(key, values);
  }

  @override
  bool? getBoolean(String key) {
    return _sharedPreferences.getBool(key);
  }

  @override
  List<Map<String, dynamic>>? getJsonList(String key) {
    return getStringList(key)
        ?.map((value) => jsonDecode(value) as Map<String, dynamic>)
        .toList();
  }

  @override
  String? getString(String key) {
    return _sharedPreferences.getString(key);
  }

  @override
  List<String>? getStringList(String key) {
    return _sharedPreferences.getStringList(key);
  }

  @override
  Future<bool> remove(String key) async {
    return await _sharedPreferences.remove(key);
  }

  @override
  bool containsKey(String key) {
    return _sharedPreferences.containsKey(key);
  }

  @override
  Map<String, dynamic>? getJson(String key) {
    final json = _sharedPreferences.getString(key);
    if (json == null) {
      return null;
    }
    return jsonDecode(json) as Map<String, dynamic>;
  }

  @override
  Future<bool> setJson(String key, Map<String, dynamic> value) async {
    return await _sharedPreferences.setString(key, jsonEncode(value));
  }
}
