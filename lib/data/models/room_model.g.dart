// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RoomModel _$RoomModelFromJson(Map<String, dynamic> json) => RoomModel(
      roomId: json['roomId'] as String,
      hostPhoneNumber: json['hostPhoneNumber'] as String,
      guestPhoneNumber: json['guestPhoneNumber'] as String,
      createdAt: const TimestampConverter()
          .fromJson(json['createdAt'] as Map<String, dynamic>),
      updatedAt: const TimestampConverter()
          .fromJson(json['updatedAt'] as Map<String, dynamic>),
      roomExpirationInSecond: json['roomExpirationInSecond'] as int,
      isValid: json['isValid'] as bool,
      isHostJoined: json['isHostJoined'] as bool,
      isGuestJoined: json['isGuestJoined'] as bool,
      hostId: json['hostId'] as String,
      guestId: json['guestId'] as String,
    );

Map<String, dynamic> _$RoomModelToJson(RoomModel instance) => <String, dynamic>{
      'roomId': instance.roomId,
      'hostId': instance.hostId,
      'guestId': instance.guestId,
      'hostPhoneNumber': instance.hostPhoneNumber,
      'guestPhoneNumber': instance.guestPhoneNumber,
      'createdAt': const TimestampConverter().toJson(instance.createdAt),
      'updatedAt': const TimestampConverter().toJson(instance.updatedAt),
      'roomExpirationInSecond': instance.roomExpirationInSecond,
      'isValid': instance.isValid,
      'isHostJoined': instance.isHostJoined,
      'isGuestJoined': instance.isGuestJoined,
    };
