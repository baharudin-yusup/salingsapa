import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:salingsapa/domain/entities/video_call_invitation.dart';
import 'package:salingsapa/domain/usecases/flip_video_call_camera.dart';
import 'package:salingsapa/domain/usecases/mute_video_call_audio.dart';
import 'package:salingsapa/domain/usecases/mute_video_call_video.dart';

part 'video_call_control_bloc.freezed.dart';
part 'video_call_control_event.dart';
part 'video_call_control_state.dart';

class VideoCallControlBloc
    extends Bloc<VideoCallControlEvent, VideoCallControlState> {
  VideoCallControlBloc(
    this._flipVideoCallCamera,
    this._muteVideoCallAudio,
    this._muteVideoCallVideo,
  ) : super(const VideoCallControlState.initial()) {
    on<_FlipCameraStarted>(_onFlipCamera);
    on<_MuteAudioStarted>(_onMuteAudio);
    on<_MuteVideoStarted>(_onMuteVideo);
  }

  final FlipVideoCallCamera _flipVideoCallCamera;
  final MuteVideoCallAudio _muteVideoCallAudio;
  final MuteVideoCallVideo _muteVideoCallVideo;

  void _onFlipCamera(
      _FlipCameraStarted event, Emitter<VideoCallControlState> emit) async {
    emit(VideoCallControlState.changeControlInProgress(
        isAudioMuted: state.isAudioMuted,
        isVideoMuted: state.isVideoMuted,
        isUsingFrontCamera: state.isUsingFrontCamera));

    final flipVideoCallCameraResult = await _flipVideoCallCamera();
    flipVideoCallCameraResult.fold(
      (failure) => emit(VideoCallControlState.changeControlFailure(
          isAudioMuted: state.isAudioMuted,
          isVideoMuted: state.isVideoMuted,
          isUsingFrontCamera: state.isUsingFrontCamera,
          errorMessage: failure.errorMessage)),
      (_) => emit(VideoCallControlState.changeControlSuccess(
          isAudioMuted: state.isAudioMuted,
          isVideoMuted: state.isVideoMuted,
          isUsingFrontCamera: state.isUsingFrontCamera)),
    );
  }

  void _onMuteAudio(
      _MuteAudioStarted event, Emitter<VideoCallControlState> emit) async {
    emit(VideoCallControlState.changeControlInProgress(
        isAudioMuted: state.isAudioMuted,
        isVideoMuted: state.isVideoMuted,
        isUsingFrontCamera: state.isUsingFrontCamera));

    final flipVideoCallCameraResult =
        await _muteVideoCallAudio(!state.isAudioMuted);
    flipVideoCallCameraResult.fold(
      (failure) => emit(VideoCallControlState.changeControlFailure(
          isAudioMuted: state.isAudioMuted,
          isVideoMuted: state.isVideoMuted,
          isUsingFrontCamera: state.isUsingFrontCamera,
          errorMessage: failure.errorMessage)),
      (_) => emit(VideoCallControlState.changeControlSuccess(
          isAudioMuted: !state.isAudioMuted,
          isVideoMuted: state.isVideoMuted,
          isUsingFrontCamera: state.isUsingFrontCamera)),
    );
  }

  void _onMuteVideo(
      _MuteVideoStarted event, Emitter<VideoCallControlState> emit) async {
    emit(VideoCallControlState.changeControlInProgress(
        isAudioMuted: state.isAudioMuted,
        isVideoMuted: state.isVideoMuted,
        isUsingFrontCamera: state.isUsingFrontCamera));

    final flipVideoCallCameraResult =
        await _muteVideoCallVideo(!state.isVideoMuted);
    flipVideoCallCameraResult.fold(
      (failure) => emit(VideoCallControlState.changeControlFailure(
          isAudioMuted: state.isAudioMuted,
          isVideoMuted: state.isVideoMuted,
          isUsingFrontCamera: state.isUsingFrontCamera,
          errorMessage: failure.errorMessage)),
      (_) => emit(VideoCallControlState.changeControlSuccess(
          isAudioMuted: state.isAudioMuted,
          isVideoMuted: !state.isVideoMuted,
          isUsingFrontCamera: state.isUsingFrontCamera)),
    );
  }
}
