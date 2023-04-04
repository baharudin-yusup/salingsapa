import 'package:equatable/equatable.dart';

class VideoCallInvitation extends Equatable {
  final String invitationId;
  final String callerPhoneNumber;
  final String targetPhoneNumber;
  final String channelName;
  final DateTime createdAt;
  final DateTime validUntil;
  final bool isValid;
  final int invitationType;
  final bool isCallerJoined;
  final bool isTargetJoined;
  final int callerUid;
  final int targetUid;

  const VideoCallInvitation({
    required this.invitationId,
    required this.callerPhoneNumber,
    required this.targetPhoneNumber,
    required this.channelName,
    required this.createdAt,
    required this.validUntil,
    required this.isValid,
    required this.invitationType,
    required this.isCallerJoined,
    required this.isTargetJoined,
    required this.callerUid,
    required this.targetUid,
  });

  @override
  List<Object?> get props => [
        callerPhoneNumber,
        targetPhoneNumber,
        channelName,
        createdAt,
        validUntil,
        isValid,
        invitationType,
      ];
}
