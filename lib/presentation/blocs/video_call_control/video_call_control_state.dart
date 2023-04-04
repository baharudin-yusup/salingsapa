part of 'video_call_control_bloc.dart';

@freezed
class VideoCallControlState with _$VideoCallControlState {
  const factory VideoCallControlState.initial([
    @Default(false) bool isAudioMuted,
    @Default(false) bool isVideoMuted,
    @Default(true) bool isUsingFrontCamera,
  ]) = _Initial;

  const factory VideoCallControlState.changeControlInProgress({
    required bool isAudioMuted,
    required bool isVideoMuted,
    required bool isUsingFrontCamera,
  }) = _ChangeControlInProgress;

  const factory VideoCallControlState.changeControlSuccess({
    required bool isAudioMuted,
    required bool isVideoMuted,
    required bool isUsingFrontCamera,
  }) = _ChangeControlSuccess;

  const factory VideoCallControlState.changeControlFailure({
    required bool isAudioMuted,
    required bool isVideoMuted,
    required bool isUsingFrontCamera,
    required String errorMessage,
  }) = _ChangeControlFailure;
}
