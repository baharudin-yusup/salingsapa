import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../models/auth_token_model.dart';

abstract class AuthenticationLocalDataSource {
  Future<void> init();
  Future<bool> isAuthTokenValid();

  Future<void> setAuthToken(AuthTokenModel authTokenModel);
}

@visibleForTesting
const kAuthToken = 'kAuthToken';

class AuthenticationLocalDataSourceImpl
    implements AuthenticationLocalDataSource {
  final FlutterSecureStorage _plugin;

  AuthenticationLocalDataSourceImpl(this._plugin);

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
}
