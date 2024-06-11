import 'dart:ui';

import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';

import '../../core/errors/failures.dart';
import '../../core/utils/logger.dart';
import '../../domain/entities/phone_number.dart';
import '../../domain/repositories/general_repository.dart';
import '../models/phone_number_model.dart';
import '../plugins/phone_number_formatter_plugin.dart';

class GeneralRepositoryImpl implements GeneralRepository {
  final PhoneNumberFormatterPlugin _phoneNumberFormatterPlugin;

  GeneralRepositoryImpl(this._phoneNumberFormatterPlugin);

  @override
  Either<Failure, Locale> getDeviceLocale() {
    try {
      final locale = _phoneNumberFormatterPlugin.getDeviceLocale();

      if (locale == null) {
        return const Left(UnknownFailure());
      }
      return Right(locale);
    } catch (error) {
      Logger.error(error, event: 'getting device locale');
      return const Left(UnknownFailure());
    }
  }

  @override
  Future<Either<Failure, Unit>> init() async {
    try {
      await _phoneNumberFormatterPlugin.init();
      return const Right(unit);
    } catch (error) {
      Logger.error(error, event: 'initializing general repository');
      return const Left(UnknownFailure());
    }
  }

  @override
  Future<Either<Failure, bool>> isPhoneNumberValid(
    PhoneNumber phoneNumber,
  ) async {
    try {
      final isValid = await _phoneNumberFormatterPlugin.isValid(
          phoneNumber: PhoneNumberModel(
        regionCode: phoneNumber.regionCode,
        dialCode: phoneNumber.dialCode,
        national: phoneNumber.national,
        international: phoneNumber.international,
        raw: phoneNumber.raw,
      ));

      return Right(isValid);
    } catch (error) {
      if (error is PlatformException) {
        return Left(FeatureFailure(errorMessage: error.message));
      }
      Logger.error(error, event: 'initializing general repository');
      return Left(FeatureFailure(errorMessage: '$error'));
    }
  }

  @override
  Future<Either<Failure, PhoneNumber>> formatPhoneNumber(
      String phoneNumber, String? countryCode) async {
    final result = await _phoneNumberFormatterPlugin.build(
        phoneNumber: phoneNumber, region: countryCode);
    return Right(result.toEntity());
  }
}
