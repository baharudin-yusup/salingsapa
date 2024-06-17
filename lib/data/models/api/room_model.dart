import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/room.dart';
import '../../utils/timestamp_converter.dart';
import 'room_participant_model.dart';

part 'room_model.g.dart';

@JsonSerializable(converters: [TimestampConverter()], explicitToJson: true)
class RoomModel extends Equatable {
  final String roomId;
  final Timestamp createdAt;
  final Timestamp updatedAt;
  final bool isValid;
  final List<RoomParticipantModel> participants;

  const RoomModel({
    required this.roomId,
    required this.createdAt,
    required this.updatedAt,
    required this.isValid,
    required this.participants,
  });

  factory RoomModel.fromJson(Map<String, dynamic> json) =>
      _$RoomModelFromJson(json);

  Map<String, dynamic> toJson() => _$RoomModelToJson(this);

  @override
  List<Object?> get props => [
        roomId,
        createdAt,
        updatedAt,
        isValid,
        participants,
      ];
}

extension VideoCallInvitationModelToEntity on RoomModel {
  Room toEntity() => Room(
        roomId: roomId,
        createdAt: createdAt.toDate(),
        updatedAt: updatedAt.toDate(),
        isValid: isValid,
        participants:
            participants.map((participant) => participant.toEntity()).toList(),
      );
}
