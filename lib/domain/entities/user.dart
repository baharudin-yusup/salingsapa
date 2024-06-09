import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

class BasicUser extends Equatable {
  final String userId;
  final String phoneNumber;
  final String? name;
  final String? profilePictureUrl;

  const BasicUser({
    required this.userId,
    required this.phoneNumber,
    required this.name,
    required this.profilePictureUrl,
  });

  @mustCallSuper
  @override
  List<Object?> get props => [
        userId,
        phoneNumber,
        name,
        profilePictureUrl,
      ];
}

class User extends BasicUser {
  final String? fcmToken;

  const User({
    required super.userId,
    required super.phoneNumber,
    required super.name,
    required super.profilePictureUrl,
    required this.fcmToken,
  });

  @override
  List<Object?> get props => [
        ...super.props,
        fcmToken,
      ];
}
