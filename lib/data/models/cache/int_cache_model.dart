import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'int_cache_model.g.dart';

@JsonSerializable()
class IntCacheModel extends Equatable {
  final int value;
  final DateTime localValueUpdatedAt;
  final DateTime? remoteValueUpdatedAt;

  const IntCacheModel({
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

  factory IntCacheModel.fromJson(Map<String, dynamic> json) =>
      _$IntCacheModelFromJson(json);

  Map<String, dynamic> toJson() => _$IntCacheModelToJson(this);

  IntCacheModel copyWith({
    final int? value,
    final DateTime? localValueUpdatedAt,
    final DateTime? remoteValueUpdatedAt,
  }) {
    return IntCacheModel(
      value: value ?? this.value,
      localValueUpdatedAt: localValueUpdatedAt ?? this.localValueUpdatedAt,
      remoteValueUpdatedAt: remoteValueUpdatedAt ?? this.remoteValueUpdatedAt,
    );
  }
}
