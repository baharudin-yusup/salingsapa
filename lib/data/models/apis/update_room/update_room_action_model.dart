import 'package:json_annotation/json_annotation.dart';

@JsonEnum()
enum UpdateRoomActionModel {
  @JsonValue('JOIN')
  join,
  @JsonValue('LEAVE')
  leave
}
