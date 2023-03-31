// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_call_invitation_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VideoCallInvitationModel _$VideoCallInvitationModelFromJson(
        Map<String, dynamic> json) =>
    VideoCallInvitationModel(
      invitationId: json['invitationId'] as String,
      callerPhoneNumber: json['callerPhoneNumber'] as String,
      targetPhoneNumber: json['targetPhoneNumber'] as String,
      channelName: json['channelName'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      validUntil: DateTime.parse(json['validUntil'] as String),
      isValid: json['isValid'] as bool,
      invitationType: json['invitationType'] as int,
      isCallerJoined: json['isCallerJoined'] as bool,
      isTargetJoined: json['isTargetJoined'] as bool,
      callerUid: json['callerUid'] as int,
      targetUid: json['targetUid'] as int,
    );

Map<String, dynamic> _$VideoCallInvitationModelToJson(
        VideoCallInvitationModel instance) =>
    <String, dynamic>{
      'invitationId': instance.invitationId,
      'callerPhoneNumber': instance.callerPhoneNumber,
      'targetPhoneNumber': instance.targetPhoneNumber,
      'channelName': instance.channelName,
      'createdAt': instance.createdAt.toIso8601String(),
      'validUntil': instance.validUntil.toIso8601String(),
      'isValid': instance.isValid,
      'invitationType': instance.invitationType,
      'callerUid': instance.callerUid,
      'targetUid': instance.targetUid,
      'isCallerJoined': instance.isCallerJoined,
      'isTargetJoined': instance.isTargetJoined,
    };
