import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/room_participant.dart';
import '../../utils/timestamp_converter.dart';
import 'user_model.dart';

part 'room_participant_model.g.dart';

@JsonSerializable(converters: [TimestampConverter()], explicitToJson: true)
class RoomParticipantModel extends BasicUserModel {
  final bool isHost;
  final bool isJoined;
  final Timestamp? createdAt;
  final Timestamp? updatedAt;

  const RoomParticipantModel({
    required this.isHost,
    required this.isJoined,
    this.createdAt,
    this.updatedAt,
    required super.userId,
    required super.phoneNumber,
    required super.name,
    required super.profilePictureUrl,
  });

  factory RoomParticipantModel.fromJson(Map<String, dynamic> json) {
    const converter = TimestampConverter();
    if (json['createdAt'].runtimeType == Timestamp) {
      json['createdAt'] = converter.toJson(json['createdAt']);
    }
    if (json['updatedAt'].runtimeType == Timestamp) {
      json['updatedAt'] = converter.toJson(json['updatedAt']);
    }
    return _$RoomParticipantModelFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() => _$RoomParticipantModelToJson(this);

  @override
  List<Object?> get props =>
      [
        ...super.props,
        isHost,
        isJoined,
        createdAt,
        updatedAt,
      ];
}

extension RoomParticipantModelToEntity on RoomParticipantModel {
  RoomParticipant toEntity() =>
      RoomParticipant(
        isHost: isHost,
        isJoined: isJoined,
        userId: userId,
        phoneNumber: phoneNumber,
        name: name,
        profilePictureUrl: profilePictureUrl,
      );
}
