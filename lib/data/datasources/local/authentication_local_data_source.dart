import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../../constants/cache_key.dart';
import '../../models/local/auth_token_model.dart';
import '../cache/cache_service.dart';

abstract class AuthenticationLocalDataSource {
  Future<void> init();

  Future<bool> isAuthTokenValid();

  Future<void> setAuthToken(AuthTokenModel authTokenModel);

  Future<void> clearUserData();
}

@visibleForTesting
const kAuthToken = 'kAuthToken';

class AuthenticationLocalDataSourceImpl
    implements AuthenticationLocalDataSource {
  final FlutterSecureStorage _plugin;
  final CacheService _cacheService;

  AuthenticationLocalDataSourceImpl(this._plugin, this._cacheService);

  @override
  Future<bool> isAuthTokenValid() async {
    final rawData = await _plugin.read(key: kAuthToken);
    if (rawData == null) {
      return false;
    }

    final authToken = AuthTokenModel.fromJson(jsonDecode(rawData));

    if (DateTime.now().isAfter(authToken.expirationDate)) {
      return false;
    }
    return true;
  }

  @override
  Future<void> setAuthToken(AuthTokenModel authTokenModel) async {
    await _plugin.write(
        key: kAuthToken, value: jsonEncode(authTokenModel.toJson()));
  }

  @override
  Future<void> init() async {}

  @override
  Future<void> clearUserData() async {
    await _cacheService.remove(CacheKey.currentUserProfile);
  }
}
