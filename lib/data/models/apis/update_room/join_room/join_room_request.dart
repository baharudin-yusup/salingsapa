import 'package:json_annotation/json_annotation.dart';

import '../base_update_room_request.dart';
import '../update_room_action_model.dart';

part 'join_room_request.g.dart';

@JsonSerializable(createFactory: false, ignoreUnannotated: true)
class JoinRoomRequest extends BaseUpdateRoomRequest {
  const JoinRoomRequest() : super(action: UpdateRoomActionModel.join);

  factory JoinRoomRequest.fromJson(Map<String, dynamic> json) =>
      const JoinRoomRequest();

  Map<String, dynamic> toJson() => _$JoinRoomRequestToJson(this);
}
