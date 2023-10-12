part of 'video_call_bloc.dart';

@freezed
class VideoCallState with _$VideoCallState {
  const factory VideoCallState.initial({
    @Default(null) VideoCallInvitation? invitation,
    @Default(false) bool isRemoteUserJoined,
    @Default(false) bool isTakePhotoEnabled,
    @Default(-1) int localUid,
    @Default(-1) int remoteUid,
  }) = _Initial;

  const factory VideoCallState.joinChannelInProgress({
    required VideoCallInvitation? invitation,
    required bool isRemoteUserJoined,
    required bool isTakePhotoEnabled,
    required int localUid,
    required int remoteUid,
  }) = _JoinChannelInProgress;

  const factory VideoCallState.joinChannelSuccess({
    required VideoCallInvitation invitation,
    required bool isRemoteUserJoined,
    required bool isTakePhotoEnabled,
    required RtcEngine engine,
    required int localUid,
    required int remoteUid,
  }) = _JoinChannelSuccess;

  const factory VideoCallState.remoteUserJoinSuccess({
    required VideoCallInvitation? invitation,
    @Default(true) bool isRemoteUserJoined,
    required bool isTakePhotoEnabled,
    required RtcEngine engine,
    required int localUid,
    required int remoteUid,
  }) = _RemoteUserJoinSuccess;

  const factory VideoCallState.joinChannelFailure({
    required VideoCallInvitation? invitation,
    required bool isRemoteUserJoined,
    required bool isTakePhotoEnabled,
    required int localUid,
    required int remoteUid,
  }) = _JoinChannelFailure;

  const factory VideoCallState.remoteUserJoinFailure({
    required VideoCallInvitation? invitation,
    @Default(false) bool isRemoteUserJoined,
    required bool isTakePhotoEnabled,
    required int localUid,
    required int remoteUid,
  }) = _RemoteUserJoinFailure;

  const factory VideoCallState.leaveChannelInProgress({
    required VideoCallInvitation? invitation,
    required bool isRemoteUserJoined,
    required bool isTakePhotoEnabled,
    required int localUid,
    required int remoteUid,
  }) = _LeaveChannelInProgress;

  const factory VideoCallState.leaveChannelSuccess({
    required VideoCallInvitation? invitation,
    @Default(false) bool isRemoteUserJoined,
    required bool isTakePhotoEnabled,
    required int localUid,
    required int remoteUid,
  }) = _LeaveChannelSuccess;

  const factory VideoCallState.remoteUserLeaveSuccess({
    required VideoCallInvitation? invitation,
    @Default(false) bool isRemoteUserJoined,
    required bool isTakePhotoEnabled,
    @Default(null) RtcEngine? engine,
    required int localUid,
    required int remoteUid,
  }) = _RemoteUserLeaveSuccess;

  const factory VideoCallState.leaveChannelFailure({
    required VideoCallInvitation? invitation,
    required bool isRemoteUserJoined,
    required bool isTakePhotoEnabled,
    required int localUid,
    required int remoteUid,
  }) = _LeaveChannelFailure;
}
