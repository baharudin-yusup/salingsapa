import 'package:dartz/dartz.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:salingsapa/domain/entities/app_permission.dart';

import '../../core/errors/failures.dart';
import '../../core/interfaces/use_case.dart';

class RequestPermission extends UseCase<AppPermission, bool> {
  const RequestPermission();

  @override
  Future<Either<Failure, bool>> call(AppPermission param) async {
    late final Permission permission;
    switch (param) {
      case AppPermission.accessContact:
        permission = Permission.contacts;
        break;
    }

    final status = await permission.request();
    final isGranted = status.isGranted;

    return Right(isGranted);
  }
}
