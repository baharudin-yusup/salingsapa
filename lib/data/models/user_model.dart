import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart' as fb;
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/user.dart';
import '../utils/timestamp_converter.dart';

part 'user_model.g.dart';

@JsonSerializable()
class BasicUserModel extends Equatable {
  final String userId;
  final String phoneNumber;
  final String? name;
  final String? profilePictureUrl;

  const BasicUserModel({
    required this.userId,
    required this.phoneNumber,
    required this.name,
    required this.profilePictureUrl,
  });

  factory BasicUserModel.fromJson(Map<String, dynamic> json) =>
      _$BasicUserModelFromJson(json);

  Map<String, dynamic> toJson() => _$BasicUserModelToJson(this);

  @mustCallSuper
  @override
  List<Object?> get props => [
        userId,
        phoneNumber,
        name,
        profilePictureUrl,
      ];
}

@JsonSerializable(converters: [TimestampConverter()])
class UserModel extends BasicUserModel {
  final String? fcmToken;
  final Timestamp? createdAt;
  final Timestamp? updatedAt;

  const UserModel({
    required super.userId,
    required super.phoneNumber,
    required super.name,
    required super.profilePictureUrl,
    this.fcmToken,
    this.createdAt,
    this.updatedAt,
  });

  factory UserModel.fromFirebaseAuth(
    fb.User user, {
    bool isNewAccount = false,
  }) =>
      UserModel(
        userId: user.uid,
        phoneNumber: user.phoneNumber!,
        fcmToken: null,
        name: user.displayName ?? user.phoneNumber,
        profilePictureUrl: user.photoURL,
        createdAt: isNewAccount ? Timestamp.now() : null,
        updatedAt: isNewAccount ? Timestamp.now() : null,
      );

  factory UserModel.fromJson(Map<String, dynamic> json) {
    const converter = TimestampConverter();
    if (json['createdAt'].runtimeType == Timestamp) {
      json['createdAt'] = converter.toJson(json['createdAt']);
    }
    if (json['updatedAt'].runtimeType == Timestamp) {
      json['updatedAt'] = converter.toJson(json['updatedAt']);
    }
    return _$UserModelFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() => _$UserModelToJson(this);

  User toEntity() {
    return User(
      userId: userId,
      name: name ?? phoneNumber,
      fcmToken: fcmToken,
      phoneNumber: phoneNumber,
      profilePictureUrl: profilePictureUrl,
    );
  }

  @override
  List<Object?> get props => [
        ...super.props,
        fcmToken,
        createdAt,
        updatedAt,
      ];
}

extension BasicUserModelToEntity on BasicUserModel {
  BasicUser toEntity() {
    return BasicUser(
      userId: userId,
      name: name ?? phoneNumber,
      phoneNumber: phoneNumber,
      profilePictureUrl: profilePictureUrl,
    );
  }
}
