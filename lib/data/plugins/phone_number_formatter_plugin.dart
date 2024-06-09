import 'package:country_codes/country_codes.dart';
import 'package:flutter_libphonenumber/flutter_libphonenumber.dart' as lp;

import '../../core/utils/logger.dart';
import '../models/phone_number_model.dart';

abstract class PhoneNumberFormatterPlugin {
  Future<void> init();

  Future<PhoneNumberModel> build({
    required String phoneNumber,
    String? region,
  });
}

class PhoneNumberFormatterPluginImpl implements PhoneNumberFormatterPlugin {
  bool _isInitialized = false;

  @override
  Future<PhoneNumberModel> build({
    required String phoneNumber,
    String? region,
  }) async {
    phoneNumber = phoneNumber.replaceAll(' ', '');
    if (phoneNumber.startsWith('0')) {
      region ??= CountryCodes.getDeviceLocale()?.countryCode;
      phoneNumber = phoneNumber.substring(1);
    } else if (!phoneNumber.startsWith('+')) {
      phoneNumber = '+$phoneNumber';
    }

    try {
      final data = await lp.parse(phoneNumber, region: region);
      return PhoneNumberModel(
        regionCode: data['region_code'],
        national: data['national'],
        international: data['international'],
        raw: data['e164'],
      );
    } catch (error) {
      return PhoneNumberModel(
        regionCode: null,
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
}
