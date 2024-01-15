import 'package:json_annotation/json_annotation.dart';

import 'base_api_response.dart';

part 'join_room_response.g.dart';

@JsonSerializable()
class JoinRoomResponse extends BaseApiResponse<JoinRoomResponseData> {
  JoinRoomResponse({
    required super.message,
    required super.data,
  });

  factory JoinRoomResponse.fromJson(Map<String, dynamic> json) =>
      _$JoinRoomResponseFromJson(json);
}

@JsonSerializable()
class JoinRoomResponseData {
  final String token;

  JoinRoomResponseData({
    required this.token,
  });

  factory JoinRoomResponseData.fromJson(Map<String, dynamic> json) =>
      _$JoinRoomResponseDataFromJson(json);
}
