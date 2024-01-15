import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../room_model.dart';
import 'base_api_response.dart';

part 'create_room_request.g.dart';

@JsonSerializable()
class CreateRoomRequest extends Equatable {
  final String guestPhoneNumber;

  const CreateRoomRequest({
    required this.guestPhoneNumber,
  });

  factory CreateRoomRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateRoomRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreateRoomRequestToJson(this);

  @override
  List<Object?> get props => [guestPhoneNumber];
}
