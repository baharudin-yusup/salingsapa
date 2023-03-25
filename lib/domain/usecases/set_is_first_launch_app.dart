import 'package:dartz/dartz.dart';
import 'package:salingsapa/core/utils/logger.dart';
import 'package:salingsapa/domain/repositories/setting_repository.dart';

import '../../core/errors/failures.dart';
import '../../core/interfaces/use_case.dart';

class SetIsFirstLaunchApp extends UseCase<bool, Unit> {
  final SettingRepository _repository;

  const SetIsFirstLaunchApp(this._repository);

  @override
  Future<Either<Failure, Unit>> call(bool param) async {
    Logger.print('Make IsFirstLaunchApp to $param...');
    return await _repository.setIsFirstLaunchApp(param);
  }
}
