part of 'video_call_control_bloc.dart';

enum VideoCallControlFeature {
  muteAudio,
  muteVideo,
  useFrontCamera,
}

@freezed
class VideoCallControlState with _$VideoCallControlState {
  const factory VideoCallControlState.initial({
    @Default(DataState(true)) DataState<bool> isAudioMuted,
    @Default(DataState(false)) DataState<bool> isVideoMuted,
    @Default(DataState(false)) DataState<bool> isUsingFrontCamera,
  }) = _Initial;

  const factory VideoCallControlState.changeControlFailure({
    required DataState<bool> isAudioMuted,
    required DataState<bool> isVideoMuted,
    required DataState<bool> isUsingFrontCamera,
    required Failure failure,
  }) = _ChangeControlFailure;
}
