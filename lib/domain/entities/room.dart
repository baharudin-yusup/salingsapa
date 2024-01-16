import 'package:equatable/equatable.dart';

class Room extends Equatable {
  final String roomId;
  final String hostPhoneNumber;
  final String guestPhoneNumber;
  final DateTime createdAt;
  final DateTime updatedAt;
  final Duration expirationTime;
  final bool isValid;
  final bool isHostJoined;
  final bool isGuestJoined;
  final String hostId;
  final String guestId;

  const Room({
    required this.roomId,
    required this.hostPhoneNumber,
    required this.guestPhoneNumber,
    required this.createdAt,
    required this.updatedAt,
    required this.expirationTime,
    required this.isValid,
    required this.isHostJoined,
    required this.isGuestJoined,
    required this.hostId,
    required this.guestId,
  });

  @override
  List<Object?> get props => [
        roomId,
        hostPhoneNumber,
        guestPhoneNumber,
        createdAt,
        updatedAt,
        expirationTime,
        isValid,
        isHostJoined,
        isGuestJoined,
        hostId,
        guestId,
      ];

  @override
  String toString() {
    return '$props';
  }
}

extension RoomExtension on Room {
  DateTime get validUntil => createdAt.add(expirationTime);
}
