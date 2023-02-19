import 'package:equatable/equatable.dart';

abstract class Exception extends Equatable {
  @override
  List<Object?> get props => [];
}

class ServerException extends Exception {}

class BadDataException extends Exception {}

class CacheException extends Exception {}
