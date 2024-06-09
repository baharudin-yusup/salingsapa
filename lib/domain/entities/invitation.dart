import 'package:equatable/equatable.dart';

import 'room_participant.dart';
import 'user.dart';

class Invitation extends Equatable {
  final String invitationId;
  final String roomId;
  final DateTime createdAt;
  final DateTime validUntil;
  final BasicUser senderUserInformation;
  final List<RoomParticipant> participants;
  final String receiverUserId;
  final bool isAccepted;
  final bool isRejected;

  const Invitation({
    required this.invitationId,
    required this.roomId,
    required this.createdAt,
    required this.validUntil,
    required this.senderUserInformation,
    required this.participants,
    required this.receiverUserId,
    required this.isAccepted,
    required this.isRejected,
  });

  @override
  List<Object?> get props => [
        invitationId,
        roomId,
        createdAt,
        validUntil,
        senderUserInformation,
        participants,
        receiverUserId,
        isAccepted,
        isRejected,
      ];
}
