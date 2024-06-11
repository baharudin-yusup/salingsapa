import 'package:json_annotation/json_annotation.dart';

import 'base_update_room_request.dart';
import 'update_room_action_model.dart';

part 'leave_room_request.g.dart';

@JsonSerializable(createFactory: false, ignoreUnannotated: true)
class LeaveRoomRequest extends BaseUpdateRoomRequest {
  const LeaveRoomRequest() : super(action: UpdateRoomActionModel.leave);

  factory LeaveRoomRequest.fromJson(Map<String, dynamic> json) =>
      const LeaveRoomRequest();

  Map<String, dynamic> toJson() => _$LeaveRoomRequestToJson(this);
}
