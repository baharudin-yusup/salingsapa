part of 'create_room_bloc.dart';

@freezed
class CreateRoomState with _$CreateRoomState {
  factory CreateRoomState.initial(Contact contact) = _Initial;
  factory CreateRoomState.inProgress(Contact contact) = _InProgress;
  factory CreateRoomState.failure(Contact contact, Failure failure) = _Failure;
  factory CreateRoomState.success(Contact contact, Room room) = _Success;
}
