part of 'video_call_bloc.dart';

@freezed
class VideoCallState with _$VideoCallState {
  const factory VideoCallState.initial(Room room) = _Initial;

  // Handle init engine state
  const factory VideoCallState.initEngineInProgress(Room room) =
      _InitEngineInProgress;

  const factory VideoCallState.initEngineSuccess(Room room, RtcEngine engine) =
      _InitEngineSuccess;

  const factory VideoCallState.initEngineFailure(Room room, Failure failure) =
      _InitEngineFailure;

  // Handle user join room + streaming state
  const factory VideoCallState.joinRoomInProgress(Room room, RtcEngine engine) =
      _JoinRoomInProgress;

  const factory VideoCallState.joinRoomFailure(
    Room room,
    RtcEngine engine,
    Failure failure,
  ) = _JoinRoomFailure;

  const factory VideoCallState.joinRoomSuccess({
    required Room room,
    required RtcEngine engine,
    int? localVideoUid,
    int? remoteVideoUid,
    @Default(false) bool isTakePhotoEnabled,
    Failure? failure,
  }) = _JoinRoomSuccess;

  // Handle leave room + streaming
  const factory VideoCallState.leaveRoomInProgress({
    required Room room,
    @Default(null) RtcEngine? engine,
  }) = _LeaveRoomInProgress;

  const factory VideoCallState.leaveRoomSuccess({
    required Room room,
    @Default(null) RtcEngine? engine,
  }) = _LeaveRoomSuccess;

  const factory VideoCallState.leaveRoomFailure({
    required Room room,
    required Failure failure,
  }) = _LeaveRoomFailure;
}
