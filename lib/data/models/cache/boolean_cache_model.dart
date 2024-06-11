import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'boolean_cache_model.g.dart';

@JsonSerializable()
class BooleanCacheModel extends Equatable {
  final bool value;
  final DateTime localValueUpdatedAt;
  final DateTime? remoteValueUpdatedAt;

  const BooleanCacheModel({
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

  factory BooleanCacheModel.fromJson(Map<String, dynamic> json) =>
      _$BooleanCacheModelFromJson(json);

  Map<String, dynamic> toJson() => _$BooleanCacheModelToJson(this);


  BooleanCacheModel copyWith({
    final bool? value,
    final DateTime? localValueUpdatedAt,
    final DateTime? remoteValueUpdatedAt,
  }) {
    return BooleanCacheModel(
      value: value ?? this.value,
      localValueUpdatedAt: localValueUpdatedAt ?? this.localValueUpdatedAt,
      remoteValueUpdatedAt: remoteValueUpdatedAt ?? this.remoteValueUpdatedAt,
    );
  }
}
