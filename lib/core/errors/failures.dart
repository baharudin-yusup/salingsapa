import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:permission_handler/permission_handler.dart';

abstract class Failure extends Equatable {
  final String errorMessage;
  final DateTime? createdAt;

  const Failure({
    this.errorMessage = 'Unknown Error',
    this.createdAt,
  });

  @override
  List<Object?> get props => [
        errorMessage,
        createdAt,
      ];
}

class UnknownFailure extends Failure {
  const UnknownFailure({super.createdAt});
}

class ServerFailure extends Failure {
  const ServerFailure({super.createdAt});
}

class UnAuthorizedFailure extends ServerFailure {
  const UnAuthorizedFailure({super.createdAt});
}

class CacheFailure extends Failure {
  const CacheFailure({super.createdAt});
}

class FeatureFailure extends Failure {
  const FeatureFailure({super.errorMessage, super.createdAt});
}

class PermissionFailure extends Failure {
  final Either<Permission, List<Permission>> permission;

  const PermissionFailure(
    this.permission, {
    super.createdAt,
  });
}
