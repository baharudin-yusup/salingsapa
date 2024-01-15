// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_room_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateRoomResponse _$CreateRoomResponseFromJson(Map<String, dynamic> json) =>
    CreateRoomResponse(
      message: json['message'] as String,
      data:
          CreateRoomResponseData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CreateRoomResponseToJson(CreateRoomResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };

CreateRoomResponseData _$CreateRoomResponseDataFromJson(
        Map<String, dynamic> json) =>
    CreateRoomResponseData(
      room: RoomModel.fromJson(json['room'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CreateRoomResponseDataToJson(
        CreateRoomResponseData instance) =>
    <String, dynamic>{
      'room': instance.room,
    };
