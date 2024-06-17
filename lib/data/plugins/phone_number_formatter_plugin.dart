import 'dart:ui';

import 'package:country_codes/country_codes.dart';
import 'package:flutter/services.dart';
import 'package:flutter_libphonenumber/flutter_libphonenumber.dart' as lp;

import '../../core/utils/logger.dart';
import '../models/exception/exception.dart';
import '../models/local/phone_number_model.dart';

abstract class PhoneNumberFormatterPlugin {
  Future<void> init();

  Locale? getDeviceLocale();

  Future<PhoneNumberModel> build({
    required String phoneNumber,
    String? region,
  });

  Future<bool> isValid({
    required PhoneNumberModel phoneNumber,
  });
}

class PhoneNumberFormatterPluginImpl implements PhoneNumberFormatterPlugin {
  bool _isInitialized = false;

  @override
  Future<PhoneNumberModel> build({
    required String phoneNumber,
    String? region,
  }) async {
    // Create a regular expression that matches all non-alphabet characters
    RegExp regExp = RegExp(r'[^0-9]');

    // Use the replaceAll method to replace all non-alphabet characters with an empty string
    phoneNumber = phoneNumber.replaceAll(regExp, '');
    if (phoneNumber.startsWith('0')) {
      region ??= getDeviceLocale()?.countryCode;
      phoneNumber = phoneNumber.substring(1);
      phoneNumber = '+$phoneNumber';
    }

    if (!phoneNumber.startsWith('+')) {
      phoneNumber = '+$phoneNumber';
    }

    try {
      final data = await lp.parse(phoneNumber, region: region);
      return PhoneNumberModel(
        regionCode: data['region_code'],
        dialCode: '${data['country_code']}',
        national: data['national'],
        international: data['international'],
        raw: data['e164'],
      );
    } catch (error) {
      return PhoneNumberModel(
        regionCode: null,
        dialCode: null,
        national: null,
        international: null,
        raw: phoneNumber,
      );
    }
  }

  @override
  Future<void> init() async {
    if (_isInitialized) {
      return;
    }
    try {
      await CountryCodes.init();
      await lp.init();
      _isInitialized = true;
      Logger.print('initializing phone number formatter success!');
    } catch (error) {
      Logger.error(error, event: 'initializing phone number formatter');
    }
  }

  @override
  Locale? getDeviceLocale() {
    return CountryCodes.getDeviceLocale();
  }

  @override
  Future<bool> isValid({required PhoneNumberModel phoneNumber}) async {
    try {
      await lp.parse(phoneNumber.raw, region: phoneNumber.regionCode);
      return true;
    } catch (error) {
      if (error is PlatformException) {
        rethrow;
      }
      throw FeatureException(message: error.toString());
    }
  }
}
