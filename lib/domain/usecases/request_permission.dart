import 'package:dartz/dartz.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../core/errors/failure.dart';
import '../../core/utils/logger.dart';
import '../entities/app_permission.dart';
import 'use_case.dart';

class RequestPermission extends UseCase<AppPermission, bool?> {
  const RequestPermission();

  @override
  Future<Either<Failure, bool?>> call(AppPermission param) async {
    try {
      late final Permission permission;
      switch (param) {
        case AppPermission.accessContact:
          permission = Permission.contacts;
          break;
      }

      if (await permission.isPermanentlyDenied) {
        await openAppSettings();
        return const Right(null);
      }

      final status = await permission.request();
      final isGranted = status.isGranted;
      if (!isGranted) {
        return Left(PermissionFailure(param, createdAt: DateTime.now()));
      }

      return Right(isGranted);
    } catch (error) {
      Logger.error(error, event: 'requesting permission $param');
      return Left(PermissionFailure(param, createdAt: DateTime.now()));
    }
  }
}
