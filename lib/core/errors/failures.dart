import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  @override
  List<Object?> get props => [];
}

class UnknownFailure extends Failure {}

class ServerFailure extends Failure {}

class UnAuthorizedFailure extends ServerFailure {}

class CacheFailure extends Failure {}
