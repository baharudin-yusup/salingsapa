import 'package:equatable/equatable.dart';

import 'room_participant.dart';

class Room extends Equatable {
  final String roomId;
  final DateTime createdAt;
  final DateTime updatedAt;
  final bool _isValid;
  final List<RoomParticipant> participants;

  const Room({
    required this.roomId,
    required this.createdAt,
    required this.updatedAt,
    required bool isValid,
    required this.participants,
  }) : _isValid = isValid;

  bool get isValid {
    return _isValid;
  }

  @override
  List<Object?> get props => [
        roomId,
        createdAt,
        updatedAt,
        isValid,
        participants,
      ];
}
