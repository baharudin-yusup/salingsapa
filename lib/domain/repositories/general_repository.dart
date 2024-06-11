import 'dart:ui';

import 'package:dartz/dartz.dart';

import '../../core/errors/failures.dart';
import '../entities/phone_number.dart';

abstract class GeneralRepository {
  Future<Either<Failure, Unit>> init();

  Future<Either<Failure, bool>> isPhoneNumberValid(PhoneNumber phoneNumber);

  Future<Either<Failure, PhoneNumber>> formatPhoneNumber(
    String phoneNumber,
    String? countryCode,
  );

  Either<Failure, Locale> getDeviceLocale();
}
