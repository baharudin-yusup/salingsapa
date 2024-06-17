import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/invitation.dart';
import '../../utils/timestamp_converter.dart';
import 'room_participant_model.dart';
import 'user_model.dart';

part 'invitation_model.g.dart';

@JsonSerializable(converters: [TimestampConverter()], explicitToJson: true)
class InvitationModel extends Equatable {
  final String invitationId;
  final String roomId;
  final Timestamp createdAt;
  final Timestamp updatedAt;
  final Timestamp validUntil;
  final BasicUserModel senderUserInformation;
  final List<RoomParticipantModel> participants;
  final String receiverUserId;
  final bool isAccepted;
  final bool isRejected;

  const InvitationModel({
    required this.invitationId,
    required this.roomId,
    required this.createdAt,
    required this.updatedAt,
    required this.validUntil,
    required this.senderUserInformation,
    required this.participants,
    required this.receiverUserId,
    required this.isAccepted,
    required this.isRejected,
  });

  factory InvitationModel.fromJson(Map<String, dynamic> json) {
    const converter = TimestampConverter();
    if (json['createdAt'].runtimeType == Timestamp) {
      json['createdAt'] = converter.toJson(json['createdAt']);
    }
    if (json['updatedAt'].runtimeType == Timestamp) {
      json['updatedAt'] = converter.toJson(json['updatedAt']);
    }
    if (json['validUntil'].runtimeType == Timestamp) {
      json['validUntil'] = converter.toJson(json['validUntil']);
    }
    return _$InvitationModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$InvitationModelToJson(this);

  @override
  List<Object?> get props => [
        invitationId,
        roomId,
        createdAt,
        updatedAt,
        validUntil,
        senderUserInformation,
        participants,
        receiverUserId,
        isAccepted,
        isRejected,
      ];
}

extension InvitationModelToEntity on InvitationModel {
  Invitation toEntity() => Invitation(
        invitationId: invitationId,
        roomId: roomId,
        createdAt: createdAt.toDate(),
        validUntil: validUntil.toDate(),
        senderUserInformation: senderUserInformation.toEntity(),
        participants:
            participants.map((participant) => participant.toEntity()).toList(),
        receiverUserId: receiverUserId,
        isAccepted: isAccepted,
        isRejected: isRejected,
      );
}
