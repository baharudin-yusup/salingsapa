import 'package:dartz/dartz.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../core/errors/failures.dart';
import '../../core/interfaces/use_case.dart';
import '../entities/app_permission.dart';

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

    return Right(isGranted);
  }
}
