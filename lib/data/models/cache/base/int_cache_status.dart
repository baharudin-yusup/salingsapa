import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'int_cache_status.g.dart';

@JsonSerializable()
class IntCacheStatus extends Equatable {
  final int value;
  final DateTime localValueUpdatedAt;
  final DateTime? remoteValueUpdatedAt;

  const IntCacheStatus({
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

  factory IntCacheStatus.fromJson(Map<String, dynamic> json) =>
      _$IntCacheStatusFromJson(json);

  Map<String, dynamic> toJson() => _$IntCacheStatusToJson(this);

  IntCacheStatus copyWith({
    final int? value,
    final DateTime? localValueUpdatedAt,
    final DateTime? remoteValueUpdatedAt,
  }) {
    return IntCacheStatus(
      value: value ?? this.value,
      localValueUpdatedAt: localValueUpdatedAt ?? this.localValueUpdatedAt,
      remoteValueUpdatedAt: remoteValueUpdatedAt ?? this.remoteValueUpdatedAt,
    );
  }
}
