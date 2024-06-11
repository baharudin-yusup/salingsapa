import 'dart:ui';

import 'package:dartz/dartz.dart';

import '../../core/errors/failures.dart';
import '../../core/interfaces/use_case.dart';
import '../repositories/general_repository.dart';

class GetDeviceLocale extends NoParamUseCaseSync<Locale> {
  final GeneralRepository _repository;

  const GetDeviceLocale(this._repository);

  @override
  Either<Failure, Locale> call() {
    return _repository.getDeviceLocale();
  }
}
