import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/video_call_invitation.dart';

part 'video_call_invitation_model.g.dart';

enum VideoCallInvitationTypeModel { call }

@JsonSerializable()
class VideoCallInvitationModel extends Equatable {
  final String invitationId;
  final String callerPhoneNumber;
  final String targetPhoneNumber;
  final String channelName;
  final DateTime createdAt;
  final DateTime validUntil;
  final bool isValid;
  final int invitationType;
  final int callerUid;
  final int targetUid;
  final bool isCallerJoined;
  final bool isTargetJoined;

  const VideoCallInvitationModel({
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

  factory VideoCallInvitationModel.fromJson(Map<String, dynamic> json) =>
      _$VideoCallInvitationModelFromJson(json);

  Map<String, dynamic> toJson() => _$VideoCallInvitationModelToJson(this);

  VideoCallInvitationModel copyWith({
    final String? invitationId,
    final String? callerPhoneNumber,
    final String? targetPhoneNumber,
    final String? channelName,
    final DateTime? createdAt,
    final DateTime? validUntil,
    final bool? isValid,
    final int? invitationType,
    final bool? isCallerJoined,
    final bool? isTargetJoined,
    final int? callerUid,
    final int? targetUid,
  }) {
    return VideoCallInvitationModel(
      invitationId: invitationId ?? this.invitationId,
      callerPhoneNumber: callerPhoneNumber ?? this.callerPhoneNumber,
      targetPhoneNumber: targetPhoneNumber ?? this.targetPhoneNumber,
      channelName: channelName ?? this.channelName,
      createdAt: createdAt ?? this.createdAt,
      validUntil: validUntil ?? this.validUntil,
      isValid: isValid ?? this.isValid,
      invitationType: invitationType ?? this.invitationType,
      isCallerJoined: isCallerJoined ?? this.isCallerJoined,
      isTargetJoined: isTargetJoined ?? this.isTargetJoined,
      callerUid: callerUid ?? this.callerUid,
      targetUid: targetUid ?? this.targetUid,
    );
  }

  @override
  List<Object?> get props => [
        callerPhoneNumber,
        targetPhoneNumber,
        channelName,
        createdAt,
        validUntil,
        isValid,
        invitationType,
        isCallerJoined,
        isTargetJoined,
      ];
}

extension VideoCallInvitationModelToEntity on VideoCallInvitationModel {
  VideoCallInvitation toEntity() {
    return VideoCallInvitation(
      invitationId: invitationId,
      callerPhoneNumber: callerPhoneNumber,
      targetPhoneNumber: targetPhoneNumber,
      channelName: channelName,
      createdAt: createdAt,
      validUntil: validUntil,
      isValid: isValid,
      invitationType: invitationType,
      isCallerJoined: isCallerJoined,
      isTargetJoined: isTargetJoined,
      callerUid: callerUid,
      targetUid: targetUid,
    );
  }
}
