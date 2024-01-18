import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_room_request.g.dart';

@JsonSerializable()
class CreateRoomRequest extends Equatable {
  final List<String> phoneNumbers;

  const CreateRoomRequest({
    required this.phoneNumbers,
  });

  factory CreateRoomRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateRoomRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreateRoomRequestToJson(this);

  @override
  List<Object?> get props => [phoneNumbers];
}
