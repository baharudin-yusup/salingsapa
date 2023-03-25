part of 'video_call_bloc.dart';

@freezed
class VideoCallState with _$VideoCallState {
  const factory VideoCallState.initial() = _Initial;

  const factory VideoCallState.joinChannelInProgress() = _JoinChannelInProgress;

  const factory VideoCallState.joinChannelSuccess() = _JoinChannelSuccess;

  const factory VideoCallState.joinChannelFailure() = _JoinChannelFailure;

  const factory VideoCallState.remoteUserJoinInProgress() =
      _RemoteUserJoinInProgress;

  const factory VideoCallState.remoteUserJoinSuccess({
    required String remoteUserUid,
  }) = _RemoteUserJoinSuccess;

  const factory VideoCallState.remoteUserJoinFailure({
    required String errorMessage,
  }) = _RemoteUserJoinFailure;
}
