import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../../core/utils/logger.dart';

abstract class SettingLocalDataSource {
  Future<bool> getIsFirstLaunchApp();

  Future<void> setIsFirstLaunchApp(bool newValue);
}

const kIsFirstLaunchApp = 'kIsFirstLaunchApp';

class SettingLocalDataSourceImpl implements SettingLocalDataSource {
  final FlutterSecureStorage _storage;

  SettingLocalDataSourceImpl(this._storage);

  @override
  Future<bool> getIsFirstLaunchApp() async {
    final rawData = await _storage.read(key: kIsFirstLaunchApp);

    if (rawData == null) {
      return true;
    }

    try {
      return jsonDecode(rawData);
    } catch (error) {
      Logger.error(error, event: 'getting $kIsFirstLaunchApp local value');
      return false;
    }
  }

  @override
  Future<void> setIsFirstLaunchApp(bool newValue) async {
    await _storage.write(key: kIsFirstLaunchApp, value: jsonEncode(newValue));
    Logger.print('Write $kIsFirstLaunchApp local value to $newValue finished!');
  }
}
