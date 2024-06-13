import 'dart:ui';

import 'package:dartz/dartz.dart';

import '../../core/errors/failure.dart';
import '../repositories/general_repository.dart';
import 'use_case.dart';

class GetDeviceLocale extends NoParamUseCaseSync<Locale> {
  final GeneralRepository _repository;

  const GetDeviceLocale(this._repository);

  @override
  Either<Failure, Locale> call() {
    return _repository.getDeviceLocale();
  }
}
