part of 'create_room_bloc.dart';

@freezed
class CreateRoomEvent with _$CreateRoomEvent {
  factory CreateRoomEvent.initStarted() = _Started;

  factory CreateRoomEvent.retryStarted() = _RetryStarted;
}
