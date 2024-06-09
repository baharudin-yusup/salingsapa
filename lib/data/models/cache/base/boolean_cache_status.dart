import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'boolean_cache_status.g.dart';

@JsonSerializable()
class BooleanCacheStatus extends Equatable {
  final bool value;
  final DateTime localValueUpdatedAt;
  final DateTime? remoteValueUpdatedAt;

  const BooleanCacheStatus({
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

  factory BooleanCacheStatus.fromJson(Map<String, dynamic> json) =>
      _$BooleanCacheStatusFromJson(json);

  Map<String, dynamic> toJson() => _$BooleanCacheStatusToJson(this);


  BooleanCacheStatus copyWith({
    final bool? value,
    final DateTime? localValueUpdatedAt,
    final DateTime? remoteValueUpdatedAt,
  }) {
    return BooleanCacheStatus(
      value: value ?? this.value,
      localValueUpdatedAt: localValueUpdatedAt ?? this.localValueUpdatedAt,
      remoteValueUpdatedAt: remoteValueUpdatedAt ?? this.remoteValueUpdatedAt,
    );
  }
}
