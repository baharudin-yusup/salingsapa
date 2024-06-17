import 'package:dartz/dartz.dart';
import 'package:permission_handler/permission_handler.dart';

import '../entities/app_permission.dart';
import '../errors/failure.dart';
import 'use_case.dart';

class HasPermission extends UseCase<AppPermission, bool> {
  const HasPermission();

  @override
  Future<Either<Failure, bool>> call(AppPermission param) async {
    late final Permission permission;
    switch (param) {
      case AppPermission.accessContact:
        permission = Permission.contacts;
        break;
    }

    final isGranted = await permission.isGranted;
    if (!isGranted) {
      return Left(PermissionFailure(param, createdAt: DateTime.now()));
    }

    return Right(isGranted);
  }
}
