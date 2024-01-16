// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'join_room_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JoinRoomResponse _$JoinRoomResponseFromJson(Map<String, dynamic> json) =>
    JoinRoomResponse(
      message: json['message'] as String,
      data: JoinRoomResponseData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$JoinRoomResponseToJson(JoinRoomResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };

JoinRoomResponseData _$JoinRoomResponseDataFromJson(
        Map<String, dynamic> json) =>
    JoinRoomResponseData(
      token: json['token'] as String,
    );

Map<String, dynamic> _$JoinRoomResponseDataToJson(
        JoinRoomResponseData instance) =>
    <String, dynamic>{
      'token': instance.token,
    };
