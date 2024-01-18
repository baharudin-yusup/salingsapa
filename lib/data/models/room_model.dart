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
  final String hostPhoneNumber;
  final bool isValid;
  final Timestamp createdAt;
  final Timestamp updatedAt;
  final int roomExpirationTimeInSecond;
  final List<String> invitedPhoneNumbers;

  const RoomModel({
    required this.createdAt,
    required this.roomId,
    required this.hostPhoneNumber,
    required this.updatedAt,
    required this.roomExpirationTimeInSecond,
    required this.isValid,
    required this.hostId,
    required this.invitedPhoneNumbers,
  });

  factory RoomModel.fromJson(Map<String, dynamic> json) =>
      _$RoomModelFromJson(json);

  factory RoomModel.fromFirebase(Map<String, dynamic> json) => RoomModel(
        createdAt: json['createdAt'],
        roomId: json['roomId'] as String,
        hostPhoneNumber: json['hostPhoneNumber'] as String,
        updatedAt: json['updatedAt'],
        roomExpirationTimeInSecond: json['roomExpirationTimeInSecond'] as int,
        isValid: json['isValid'] as bool,
        hostId: json['hostId'] as String,
        invitedPhoneNumbers: (json['invitedPhoneNumbers'] as List<dynamic>)
            .map((e) => e as String)
            .toList(),
      );

  Map<String, dynamic> toJson() => _$RoomModelToJson(this);

  @override
  List<Object?> get props => [
        createdAt,
        roomId,
        hostPhoneNumber,
        updatedAt,
        roomExpirationTimeInSecond,
        isValid,
        hostId,
        invitedPhoneNumbers,
      ];
}

extension VideoCallInvitationModelToEntity on RoomModel {
  Room toEntity() => Room(
        roomId: roomId,
        hostPhoneNumber: hostPhoneNumber,
        createdAt: createdAt.toDate(),
        updatedAt: updatedAt.toDate(),
        expirationTime: Duration(seconds: roomExpirationTimeInSecond),
        isValid: isValid,
        hostId: hostId,
        invitedPhoneNumbers: invitedPhoneNumbers,
      );
}
