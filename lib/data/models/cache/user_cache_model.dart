import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'string_cache_model.dart';

part 'user_cache_model.g.dart';

@JsonSerializable(explicitToJson: true)
class UserProfileCacheModel extends Equatable {
  final StringCacheModel? userId;
  final StringCacheModel? name;
  final StringCacheModel? phoneNumber;
  final StringCacheModel? profilePictureUrl;
  final StringCacheModel? fcmToken;

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
    final StringCacheModel? userId,
    final StringCacheModel? name,
    final StringCacheModel? phoneNumber,
    final StringCacheModel? profilePictureUrl,
    final StringCacheModel? fcmToken,
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
