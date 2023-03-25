import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:permission_handler/permission_handler.dart';

abstract class Failure extends Equatable {
  final String errorMessage;

  const Failure({this.errorMessage = 'Unknown Error'});
  @override
  List<Object?> get props => [];
}

class UnknownFailure extends Failure {}

class ServerFailure extends Failure {}

class UnAuthorizedFailure extends ServerFailure {}

class CacheFailure extends Failure {}

class PermissionFailure extends Failure {
  final Either<Permission, List<Permission>> permission;

  PermissionFailure(this.permission);
}
