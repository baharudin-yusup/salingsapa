part of 'video_call_bloc.dart';

@freezed
class VideoCallEvent with _$VideoCallEvent {
  const factory VideoCallEvent.engineStarted() = _EngineStarted;

  const factory VideoCallEvent.joinRoomStarted() = _JoinRoomStarted;
  const factory VideoCallEvent.joinRoomFailed() = _JoinRoomFailed;

  const factory VideoCallEvent.leaveRoomStarted() = _LeaveRoomStarted;

  const factory VideoCallEvent.updateUserStatusStarted(
      VideoCallUserUpdateInfo info) = _UpdateUserStatusStarted;

  // Handle photo snapshot event
  const factory VideoCallEvent.takePhotoSnapshotFeatureStatusChanged(
      bool isEnabled) = _TakePhotoSnapshotFeatureStatusChanged;

  const factory VideoCallEvent.disableTakePhotoSnapshotStarted() =
      _DisableTakePhotoSnapshotStarted;

  const factory VideoCallEvent.enableTakePhotoSnapshotStarted() =
      _EnableTakePhotoSnapshotStarted;
}
