part of 'video_call_control_bloc.dart';

@freezed
class VideoCallControlEvent with _$VideoCallControlEvent {
  const factory VideoCallControlEvent.started() = _Started;

  const factory VideoCallControlEvent.flipCameraStarted() = _FlipCameraStarted;

  const factory VideoCallControlEvent.muteAudioStarted() = _MuteAudioStarted;

  const factory VideoCallControlEvent.muteVideoStarted() = _MuteVideoStarted;
}
