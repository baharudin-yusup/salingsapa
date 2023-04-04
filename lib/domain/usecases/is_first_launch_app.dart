import 'package:dartz/dartz.dart';

import '../../core/errors/failures.dart';
import '../../core/interfaces/use_case.dart';
import '../../core/utils/logger.dart';
import '../repositories/setting_repository.dart';

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
