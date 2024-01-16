import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/room.dart';
import 'converter/timestamp_converter.dart';

part 'room_model.g.dart';

@JsonSerializable(converters: [TimestampConverter()])
class RoomModel extends Equatable {
  final String roomId;
  final String hostId;
  final String guestId;
  final String hostPhoneNumber;
  final String guestPhoneNumber;
  final Timestamp createdAt;
  final Timestamp updatedAt;
  final int roomExpirationInSecond;
  final bool isValid;
  final bool isHostJoined;
  final bool isGuestJoined;

  const RoomModel({
    required this.roomId,
    required this.hostPhoneNumber,
    required this.guestPhoneNumber,
    required this.createdAt,
    required this.updatedAt,
    required this.roomExpirationInSecond,
    required this.isValid,
    required this.isHostJoined,
    required this.isGuestJoined,
    required this.hostId,
    required this.guestId,
  });

  factory RoomModel.fromJson(Map<String, dynamic> json) =>
      _$RoomModelFromJson(json);

  Map<String, dynamic> toJson() => _$RoomModelToJson(this);

  @override
  List<Object?> get props => [
        roomId,
        hostId,
        guestId,
        hostPhoneNumber,
        guestPhoneNumber,
        createdAt,
        updatedAt,
        roomExpirationInSecond,
        isValid,
        isHostJoined,
        isGuestJoined,
      ];
}

extension VideoCallInvitationModelToEntity on RoomModel {
  Room toEntity() => Room(
        roomId: roomId,
        hostPhoneNumber: hostPhoneNumber,
        guestPhoneNumber: guestPhoneNumber,
        createdAt: createdAt.toDate(),
        updatedAt: updatedAt.toDate(),
        expirationTime: Duration(seconds: roomExpirationInSecond),
        isValid: isValid,
        isHostJoined: isHostJoined,
        isGuestJoined: isGuestJoined,
        hostId: hostId,
        guestId: guestId,
      );
}
