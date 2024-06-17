import 'package:json_annotation/json_annotation.dart';

import '../room_model.dart';
import 'base_api_response.dart';

part 'accept_invitation_response.g.dart';

@JsonSerializable(explicitToJson: true)
class AcceptInvitationResponse
    extends BaseApiResponseWithData<AcceptInvitationResponseData> {
  const AcceptInvitationResponse({
    required super.message,
    required super.data,
  });

  factory AcceptInvitationResponse.fromJson(Map<String, dynamic> json) =>
      _$AcceptInvitationResponseFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AcceptInvitationResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AcceptInvitationResponseData {
  final RoomModel room;

  AcceptInvitationResponseData({
    required this.room,
  });

  factory AcceptInvitationResponseData.fromJson(Map<String, dynamic> json) =>
      _$AcceptInvitationResponseDataFromJson(json);

  Map<String, dynamic> toJson() => _$AcceptInvitationResponseDataToJson(this);
}
