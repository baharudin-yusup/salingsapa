import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'string_cache_status.g.dart';

@JsonSerializable()
class StringCacheStatus extends Equatable {
  final String value;
  final DateTime localValueUpdatedAt;
  final DateTime? remoteValueUpdatedAt;

  const StringCacheStatus({
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

  StringCacheStatus copyWith({
    final String? value,
    final DateTime? localValueUpdatedAt,
    final DateTime? remoteValueUpdatedAt,
  }) {
    return StringCacheStatus(
      value: value ?? this.value,
      localValueUpdatedAt: localValueUpdatedAt ?? this.localValueUpdatedAt,
      remoteValueUpdatedAt: remoteValueUpdatedAt ?? this.remoteValueUpdatedAt,
    );
  }

  factory StringCacheStatus.fromJson(Map<String, dynamic> json) =>
      _$StringCacheStatusFromJson(json);

  Map<String, dynamic> toJson() => _$StringCacheStatusToJson(this);
}
