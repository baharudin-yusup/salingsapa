// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_room_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateRoomRequest _$CreateRoomRequestFromJson(Map<String, dynamic> json) =>
    CreateRoomRequest(
      phoneNumbers: (json['phoneNumbers'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$CreateRoomRequestToJson(CreateRoomRequest instance) =>
    <String, dynamic>{
      'phoneNumbers': instance.phoneNumbers,
    };
