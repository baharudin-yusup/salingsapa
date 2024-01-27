part of 'video_call_control_bloc.dart';

enum VideoCallControlFeature {
  muteAudio,
  muteVideo,
  useFrontCamera,
}

@freezed
class VideoCallControlState with _$VideoCallControlState {
  const factory VideoCallControlState.initial({
    @Default(State(true)) State<bool> isAudioMuted,
    @Default(State(false)) State<bool> isVideoMuted,
    @Default(State(false)) State<bool> isUsingFrontCamera,
  }) = _Initial;

  const factory VideoCallControlState.changeControlFailure({
    required State<bool> isAudioMuted,
    required State<bool> isVideoMuted,
    required State<bool> isUsingFrontCamera,
    required Failure failure,
  }) = _ChangeControlFailure;
}
