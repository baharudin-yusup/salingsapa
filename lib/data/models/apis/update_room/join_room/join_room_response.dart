import 'package:json_annotation/json_annotation.dart';

import '../../base_api_response.dart';

part 'join_room_response.g.dart';

@JsonSerializable(explicitToJson: true)
class JoinRoomResponse extends BaseApiResponseWithData<JoinRoomResponseData> {
  const JoinRoomResponse({
    required super.message,
    required super.data,
  });

  factory JoinRoomResponse.fromJson(Map<String, dynamic> json) =>
      _$JoinRoomResponseFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$JoinRoomResponseToJson(this);
}

@JsonSerializable()
class JoinRoomResponseData {
  final String token;

  JoinRoomResponseData({
    required this.token,
  });

  factory JoinRoomResponseData.fromJson(Map<String, dynamic> json) =>
      _$JoinRoomResponseDataFromJson(json);

  Map<String, dynamic> toJson() => _$JoinRoomResponseDataToJson(this);
}
