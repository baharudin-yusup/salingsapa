import 'package:dartz/dartz.dart';
import 'package:salingsapa/core/errors/failures.dart';
import 'package:salingsapa/core/utils/logger.dart';
import 'package:salingsapa/data/sources/setting_local_data_source.dart';
import 'package:salingsapa/domain/repositories/setting_repository.dart';

class SettingRepositoryImpl implements SettingRepository {
  final SettingLocalDataSource _localDataSource;

  SettingRepositoryImpl(this._localDataSource);

  @override
  Future<Either<Failure, bool>> getIsFirstLaunchApp() async {
    try {
      final value = await _localDataSource.getIsFirstLaunchApp();
      Logger.print('(repository) getIsFirstLaunchApp() value: $value');
      return Right(value);
    } catch (error) {
      Logger.error(error, event: 'getting IsFirstLaunchApp local data');
      return Left(CacheFailure());
    }
  }

  @override
  Future<Either<Failure, Unit>> setIsFirstLaunchApp(bool newValue) async {
    try {
      await _localDataSource.setIsFirstLaunchApp(newValue);
      return const Right(unit);
    } catch (error) {
      Logger.error(error, event: 'writing IsFirstLaunchApp local data');
      return Left(CacheFailure());
    }
  }
}
