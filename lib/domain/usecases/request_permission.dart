import 'package:dartz/dartz.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../core/errors/failures.dart';
import '../../core/interfaces/use_case.dart';
import '../../core/utils/logger.dart';
import '../entities/app_permission.dart';

class RequestPermission extends UseCase<AppPermission, bool> {
  const RequestPermission();

  @override
  Future<Either<Failure, bool>> call(AppPermission param) async {
    try {
      late final Permission permission;
      switch (param) {
        case AppPermission.accessContact:
          permission = Permission.contacts;
          break;
      }

      final status = await permission.request();
      final isGranted = status.isGranted;

      return Right(isGranted);
    } catch (error) {
      Logger.error(error, event: 'requesting permission $param');
      return Left(UnknownFailure());
    }
  }
}
