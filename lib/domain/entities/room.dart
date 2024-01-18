import 'package:equatable/equatable.dart';

class Room extends Equatable {
  final String roomId;
  final String hostId;
  final String hostPhoneNumber;
  final bool _isValid;
  final DateTime createdAt;
  final DateTime updatedAt;
  final Duration expirationTime;
  final List<String> invitedPhoneNumbers;

  bool get isValid {
    return _isValid && DateTime.now().isBefore(createdAt.add(expirationTime));
  }

  const Room({
    required this.createdAt,
    required this.roomId,
    required this.hostPhoneNumber,
    required this.updatedAt,
    required this.expirationTime,
    required bool isValid,
    required this.hostId,
    required this.invitedPhoneNumbers,
  }) : _isValid = isValid;

  @override
  List<Object?> get props => [
        createdAt,
        roomId,
        hostPhoneNumber,
        updatedAt,
        expirationTime,
        isValid,
        hostId,
        invitedPhoneNumbers,
      ];

  @override
  String toString() {
    return '$props';
  }
}

extension RoomExtension on Room {
  DateTime get validUntil => createdAt.add(expirationTime);
}
