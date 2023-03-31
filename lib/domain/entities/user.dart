import 'package:equatable/equatable.dart';

class User extends Equatable {
  final String id;
  final String phoneNumber;
  final String name;
  final String? profilePictureUrl;
  final String? fcmToken;

  const User(
    this.id,
    this.phoneNumber,
    this.name,
    this.profilePictureUrl,
    this.fcmToken,
  );

  @override
  List<Object?> get props => [
        id,
        phoneNumber,
        name,
        profilePictureUrl,
        fcmToken,
      ];
}
