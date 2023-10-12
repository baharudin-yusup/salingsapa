import 'package:equatable/equatable.dart';

abstract class Exception extends Equatable {
  @override
  List<Object?> get props => [];
}

enum ServerExceptionType {
  unauthorized,
  unknown,
}

class ServerException extends Exception {
  final String? message;
  final ServerExceptionType type;

  ServerException({
    this.message,
    this.type = ServerExceptionType.unknown,
  });

  @override
  List<Object?> get props => [
        ...super.props,
        message,
      ];
}

class BadDataException extends Exception {}

class CacheException extends Exception {}

class FeatureException extends Exception {}
