import 'package:dartz/dartz.dart';

import '../../core/errors/failure.dart';

abstract class SettingRepository {
  Future<Either<Failure, bool>> getIsFirstLaunchApp();

  Future<Either<Failure, Unit>> setIsFirstLaunchApp(bool newValue);
}
