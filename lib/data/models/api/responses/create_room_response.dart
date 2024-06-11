import 'package:json_annotation/json_annotation.dart';

import '../../room_model.dart';
import 'base_api_response.dart';

part 'create_room_response.g.dart';

@JsonSerializable(explicitToJson: true)
class CreateRoomResponse extends BaseApiResponseWithData<CreateRoomResponseData> {
  const CreateRoomResponse({
    required super.message,
    required super.data,
  });

  factory CreateRoomResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateRoomResponseFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CreateRoomResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateRoomResponseData {
  final RoomModel room;

  CreateRoomResponseData({
    required this.room,
  });

  factory CreateRoomResponseData.fromJson(Map<String, dynamic> json) =>
      _$CreateRoomResponseDataFromJson(json);

  Map<String, dynamic> toJson() => _$CreateRoomResponseDataToJson(this);
}
