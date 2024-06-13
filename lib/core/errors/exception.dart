import 'package:equatable/equatable.dart';

abstract class Exception extends Equatable {
  final String? message;

  const Exception({this.message});

  @override
  List<Object?> get props => [
        message,
      ];
}

enum ServerExceptionType {
  unauthorized,
  unknown,
}

class ServerException extends Exception {
  final ServerExceptionType type;

  const ServerException({
    super.message = 'Unknown error',
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

class FeatureException extends Exception {
  const FeatureException({super.message});
}

class GeneralException extends Exception {}

class ApiServerException extends ServerException {
  final dynamic data;

  const ApiServerException._({
    required super.message,
    required this.data,
  });

  factory ApiServerException.fromJson(Map<String, dynamic> json) {
    return ApiServerException._(
      message: json['message'],
      data: json['data'],
    );
  }
}
