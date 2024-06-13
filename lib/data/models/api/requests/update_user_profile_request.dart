import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'update_user_profile_request.g.dart';

@JsonSerializable(explicitToJson: true)
class UpdateUserProfileRequest extends Equatable {
  final UpdateUserProfileRequestData data;

  const UpdateUserProfileRequest({required this.data});

  factory UpdateUserProfileRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateUserProfileRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateUserProfileRequestToJson(this);

  @override
  List<Object?> get props => [
        data,
      ];
}

@JsonSerializable(explicitToJson: true)
class UpdateUserProfileRequestData extends Equatable {
  final String? fcmToken;
  final String? name;

  const UpdateUserProfileRequestData({
    this.fcmToken,
    this.name,
  });

  factory UpdateUserProfileRequestData.fromJson(Map<String, dynamic> json) =>
      _$UpdateUserProfileRequestDataFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateUserProfileRequestDataToJson(this);

  @override
  List<Object?> get props => [
        fcmToken,
        name,
      ];
}
