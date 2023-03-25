import 'package:dartz/dartz.dart';
import 'package:salingsapa/core/utils/logger.dart';
import 'package:salingsapa/domain/repositories/setting_repository.dart';

import '../../core/errors/failures.dart';
import '../../core/interfaces/use_case.dart';

class IsFirstLaunchApp extends NoParamUseCase<bool> {
  final SettingRepository _repository;

  const IsFirstLaunchApp(this._repository);

  @override
  Future<Either<Failure, bool>> call() async {
    final value = await _repository.getIsFirstLaunchApp();
    Logger.print('(use case) $IsFirstLaunchApp data: $value');
    return value;
  }
}
