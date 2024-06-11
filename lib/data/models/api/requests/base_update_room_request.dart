import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'update_room_action_model.dart';

abstract class BaseUpdateRoomRequest extends Equatable {
  @JsonKey()
  final UpdateRoomActionModel action;

  const BaseUpdateRoomRequest({required this.action});

  @mustCallSuper
  @override
  List<Object?> get props => [action];
}
