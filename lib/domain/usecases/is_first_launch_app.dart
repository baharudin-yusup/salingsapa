import 'package:dartz/dartz.dart';

import '../../core/errors/failure.dart';
import '../../core/utils/logger.dart';
import '../repositories/setting_repository.dart';
import 'use_case.dart';

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
