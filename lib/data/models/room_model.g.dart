// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RoomModel _$RoomModelFromJson(Map<String, dynamic> json) => RoomModel(
      createdAt: const TimestampConverter()
          .fromJson(json['createdAt'] as Map<String, dynamic>),
      roomId: json['roomId'] as String,
      hostPhoneNumber: json['hostPhoneNumber'] as String,
      updatedAt: const TimestampConverter()
          .fromJson(json['updatedAt'] as Map<String, dynamic>),
      roomExpirationTimeInSecond: json['roomExpirationTimeInSecond'] as int,
      isValid: json['isValid'] as bool,
      hostId: json['hostId'] as String,
      invitedPhoneNumbers: (json['invitedPhoneNumbers'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$RoomModelToJson(RoomModel instance) => <String, dynamic>{
      'roomId': instance.roomId,
      'hostId': instance.hostId,
      'hostPhoneNumber': instance.hostPhoneNumber,
      'isValid': instance.isValid,
      'createdAt': const TimestampConverter().toJson(instance.createdAt),
      'updatedAt': const TimestampConverter().toJson(instance.updatedAt),
      'roomExpirationTimeInSecond': instance.roomExpirationTimeInSecond,
      'invitedPhoneNumbers': instance.invitedPhoneNumbers,
    };
