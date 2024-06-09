import 'package:equatable/equatable.dart';

import 'phone_number.dart';

class Contact extends Equatable {
  final String? profilePictureUrl;
  final String name;
  final PhoneNumber phoneNumber;
  final bool isRegistered;

  const Contact({
    required this.name,
    required this.phoneNumber,
    required this.profilePictureUrl,
    required this.isRegistered,
  });

  @override
  List<Object?> get props => [
        name,
        phoneNumber,
        profilePictureUrl,
        isRegistered,
      ];

  @override
  String toString() {
    return '${phoneNumber.raw} ($name)';
  }
}
