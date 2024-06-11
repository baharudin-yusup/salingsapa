import 'package:dartz/dartz.dart';

import '../../core/errors/failure.dart';
import '../../core/utils/logger.dart';
import '../repositories/setting_repository.dart';
import 'use_case.dart';

class SetIsFirstLaunchApp extends UseCase<bool, Unit> {
  final SettingRepository _repository;

  const SetIsFirstLaunchApp(this._repository);

  @override
  Future<Either<Failure, Unit>> call(bool param) async {
    Logger.print('Make IsFirstLaunchApp to $param...');
    return await _repository.setIsFirstLaunchApp(param);
  }
}
