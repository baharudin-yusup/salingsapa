import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'base/string_cache_status.dart';

part 'user_cache_model.g.dart';

@JsonSerializable(explicitToJson: true)
class UserProfileCacheModel extends Equatable {
  final StringCacheStatus? userId;
  final StringCacheStatus? name;
  final StringCacheStatus? phoneNumber;
  final StringCacheStatus? profilePictureUrl;
  final StringCacheStatus? fcmToken;

  const UserProfileCacheModel({
    this.userId,
    this.name,
    this.phoneNumber,
    this.profilePictureUrl,
    this.fcmToken,
  });

  factory UserProfileCacheModel.fromJson(Map<String, dynamic> json) =>
      _$UserProfileCacheModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserProfileCacheModelToJson(this);

  UserProfileCacheModel copyWith({
    final StringCacheStatus? userId,
    final StringCacheStatus? name,
    final StringCacheStatus? phoneNumber,
    final StringCacheStatus? profilePictureUrl,
    final StringCacheStatus? fcmToken,
  }) {
    return UserProfileCacheModel(
      userId: userId ?? this.userId,
      name: name ?? this.name,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      profilePictureUrl: profilePictureUrl ?? this.profilePictureUrl,
      fcmToken: fcmToken ?? this.fcmToken,
    );
  }

  @override
  List<Object?> get props => [
        userId,
        name,
        phoneNumber,
        profilePictureUrl,
        fcmToken,
      ];
}
