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

class GeneralException extends Exception {}

class ApiServerException extends ServerException {
  final dynamic data;

  ApiServerException._({
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
