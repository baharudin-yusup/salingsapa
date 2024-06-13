import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_api_response.g.dart';

@JsonSerializable()
class BaseApiResponse extends Equatable {
  final String message;

  const BaseApiResponse({
    required this.message,
  });

  @mustCallSuper
  @override
  List<Object?> get props => [
        message,
      ];

  factory BaseApiResponse.fromJson(Map<String, dynamic> json) =>
      _$BaseApiResponseFromJson(json);

  Map<String, dynamic> toJson() => _$BaseApiResponseToJson(this);
}

abstract class BaseApiResponseWithData<T extends Object>
    extends BaseApiResponse {
  final T data;

  const BaseApiResponseWithData({
    required super.message,
    required this.data,
  });

  @mustCallSuper
  @override
  List<Object?> get props => [
        ...super.props,
        data,
      ];
}
