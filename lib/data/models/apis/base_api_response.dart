import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

abstract class BaseApiResponse<T> extends Equatable {
  final String message;
  final T data;

  const BaseApiResponse({
    required this.message,
    required this.data,
  });

  @mustCallSuper
  @override
  List<Object?> get props => [
        message,
        data,
      ];
}
