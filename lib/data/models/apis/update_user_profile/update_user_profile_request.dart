import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../user_model.dart';

part 'update_user_profile_request.g.dart';

@JsonSerializable()
class UpdateUserProfileRequest extends Equatable {
  final UserModel data;

  const UpdateUserProfileRequest({required this.data});

  factory UpdateUserProfileRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateUserProfileRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateUserProfileRequestToJson(this);

  @override
  List<Object?> get props => throw UnimplementedError();
}
