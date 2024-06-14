import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'string_cache_model.g.dart';

@JsonSerializable()
class StringCacheModel extends Equatable {
  final String value;
  final DateTime localValueUpdatedAt;
  final DateTime? remoteValueUpdatedAt;

  const StringCacheModel({
    required this.value,
    required this.localValueUpdatedAt,
    this.remoteValueUpdatedAt,
  });

  @override
  List<Object?> get props => [
        value,
        localValueUpdatedAt,
        remoteValueUpdatedAt,
      ];

  StringCacheModel copyWith({
    final String? value,
    final DateTime? localValueUpdatedAt,
    final DateTime? remoteValueUpdatedAt,
  }) {
    return StringCacheModel(
      value: value ?? this.value,
      localValueUpdatedAt: localValueUpdatedAt ?? this.localValueUpdatedAt,
      remoteValueUpdatedAt: remoteValueUpdatedAt ?? this.remoteValueUpdatedAt,
    );
  }

  factory StringCacheModel.fromJson(Map<String, dynamic> json) =>
      _$StringCacheModelFromJson(json);

  Map<String, dynamic> toJson() => _$StringCacheModelToJson(this);
}
