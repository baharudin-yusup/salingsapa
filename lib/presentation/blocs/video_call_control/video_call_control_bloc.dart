import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/errors/failures.dart';
import '../../../domain/usecases/flip_video_call_camera.dart';
import '../../../domain/usecases/mute_video_call_audio.dart';
import '../../../domain/usecases/mute_video_call_video.dart';
import '../../common/state.dart';

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
    final isPreConditionValid = state.when(
      initial: (isAudioMuted, isVideoMuted, isUsingFrontCamera) {
        if (isUsingFrontCamera.isLoading) {
          return false;
        }
        emit(
          VideoCallControlState.initial(
            isAudioMuted: isAudioMuted,
            isVideoMuted: isVideoMuted,
            isUsingFrontCamera: isUsingFrontCamera.copyWith(isLoading: true),
          ),
        );
        return true;
      },
      changeControlFailure:
          (isAudioMuted, isVideoMuted, isUsingFrontCamera, failure) {
        if (isUsingFrontCamera.isLoading) {
          return false;
        }
        emit(
          VideoCallControlState.initial(
            isAudioMuted: isAudioMuted,
            isVideoMuted: isVideoMuted,
            isUsingFrontCamera: isUsingFrontCamera.copyWith(isLoading: true),
          ),
        );
        return true;
      },
    );

    if (!isPreConditionValid) {
      return;
    }

    final flipVideoCallCameraResult = await _flipVideoCallCamera();
    flipVideoCallCameraResult.fold(
      (failure) {
        state.when(
          initial: (isAudioMuted, isVideoMuted, isUsingFrontCamera) {
            emit(
              VideoCallControlState.changeControlFailure(
                isAudioMuted: isAudioMuted,
                isVideoMuted: isVideoMuted,
                isUsingFrontCamera:
                    isUsingFrontCamera.copyWith(isLoading: false),
                failure: failure,
              ),
            );
          },
          changeControlFailure:
              (isAudioMuted, isVideoMuted, isUsingFrontCamera, _) {
            emit(
              VideoCallControlState.changeControlFailure(
                isAudioMuted: isAudioMuted,
                isVideoMuted: isVideoMuted,
                isUsingFrontCamera:
                    isUsingFrontCamera.copyWith(isLoading: false),
                failure: failure,
              ),
            );
          },
        );
      },
      (_) {
        state.when(
          initial: (isAudioMuted, isVideoMuted, isUsingFrontCamera) {
            emit(
              VideoCallControlState.initial(
                isAudioMuted: isAudioMuted,
                isVideoMuted: isVideoMuted,
                isUsingFrontCamera: State(!state.isUsingFrontCamera.data),
              ),
            );
          },
          changeControlFailure:
              (isAudioMuted, isVideoMuted, isUsingFrontCamera, _) {
            emit(
              VideoCallControlState.initial(
                isAudioMuted: isAudioMuted,
                isVideoMuted: isVideoMuted,
                isUsingFrontCamera: State(!state.isUsingFrontCamera.data),
              ),
            );
          },
        );
      },
    );
  }

  void _onMuteAudio(
      _MuteAudioStarted event, Emitter<VideoCallControlState> emit) async {
    final isPreConditionValid = state.when(
      initial: (isAudioMuted, isVideoMuted, isUsingFrontCamera) {
        if (isAudioMuted.isLoading) {
          return false;
        }
        emit(
          VideoCallControlState.initial(
            isAudioMuted: isAudioMuted.copyWith(isLoading: true),
            isVideoMuted: isVideoMuted,
            isUsingFrontCamera: isUsingFrontCamera,
          ),
        );
        return true;
      },
      changeControlFailure:
          (isAudioMuted, isVideoMuted, isUsingFrontCamera, _) {
        if (isAudioMuted.isLoading) {
          return false;
        }
        emit(
          VideoCallControlState.initial(
            isAudioMuted: isAudioMuted.copyWith(isLoading: true),
            isVideoMuted: isVideoMuted,
            isUsingFrontCamera: isUsingFrontCamera,
          ),
        );
        return true;
      },
    );

    if (!isPreConditionValid) {
      return;
    }

    final toggleAudioMuteFeature =
        await _muteVideoCallAudio(!state.isAudioMuted.data);
    toggleAudioMuteFeature.fold(
      (failure) {
        state.when(
          initial: (isAudioMuted, isVideoMuted, isUsingFrontCamera) {
            emit(
              VideoCallControlState.changeControlFailure(
                isAudioMuted: isAudioMuted.copyWith(isLoading: false),
                isVideoMuted: isVideoMuted,
                isUsingFrontCamera: isUsingFrontCamera,
                failure: failure,
              ),
            );
          },
          changeControlFailure:
              (isAudioMuted, isVideoMuted, isUsingFrontCamera, _) {
            emit(
              VideoCallControlState.changeControlFailure(
                isAudioMuted: isAudioMuted.copyWith(isLoading: false),
                isVideoMuted: isVideoMuted,
                isUsingFrontCamera: isUsingFrontCamera,
                failure: failure,
              ),
            );
          },
        );
      },
      (_) {
        state.when(
          initial: (isAudioMuted, isVideoMuted, isUsingFrontCamera) {
            emit(
              VideoCallControlState.initial(
                isAudioMuted: State(!isAudioMuted.data),
                isVideoMuted: isVideoMuted,
                isUsingFrontCamera: isUsingFrontCamera,
              ),
            );
          },
          changeControlFailure:
              (isAudioMuted, isVideoMuted, isUsingFrontCamera, _) {
            emit(
              VideoCallControlState.initial(
                isAudioMuted: State(!isAudioMuted.data),
                isVideoMuted: isVideoMuted,
                isUsingFrontCamera: isUsingFrontCamera,
              ),
            );
          },
        );
      },
    );
  }

  void _onMuteVideo(
      _MuteVideoStarted event, Emitter<VideoCallControlState> emit) async {
    final isPreConditionValid = state.when(
      initial: (isAudioMuted, isVideoMuted, isUsingFrontCamera) {
        if (isVideoMuted.isLoading) {
          return false;
        }
        emit(
          VideoCallControlState.initial(
            isAudioMuted: isAudioMuted,
            isVideoMuted: isVideoMuted.copyWith(isLoading: true),
            isUsingFrontCamera: isUsingFrontCamera,
          ),
        );
        return true;
      },
      changeControlFailure:
          (isAudioMuted, isVideoMuted, isUsingFrontCamera, _) {
        if (isVideoMuted.isLoading) {
          return false;
        }
        emit(
          VideoCallControlState.initial(
            isAudioMuted: isAudioMuted,
            isVideoMuted: isVideoMuted.copyWith(isLoading: true),
            isUsingFrontCamera: isUsingFrontCamera,
          ),
        );
        return true;
      },
    );

    if (!isPreConditionValid) {
      return;
    }

    final toggleVideoFeature =
        await _muteVideoCallVideo(!state.isVideoMuted.data);
    toggleVideoFeature.fold(
      (failure) {
        state.when(
          initial: (isAudioMuted, isVideoMuted, isUsingFrontCamera) {
            emit(
              VideoCallControlState.changeControlFailure(
                isAudioMuted: isAudioMuted,
                isVideoMuted: isVideoMuted.copyWith(isLoading: true),
                isUsingFrontCamera: isUsingFrontCamera,
                failure: failure,
              ),
            );
          },
          changeControlFailure:
              (isAudioMuted, isVideoMuted, isUsingFrontCamera, _) {
            emit(
              VideoCallControlState.changeControlFailure(
                isAudioMuted: isAudioMuted,
                isVideoMuted: isVideoMuted.copyWith(isLoading: false),
                isUsingFrontCamera: isUsingFrontCamera,
                failure: failure,
              ),
            );
          },
        );
      },
      (_) {
        state.when(
          initial: (isAudioMuted, isVideoMuted, isUsingFrontCamera) {
            emit(
              VideoCallControlState.initial(
                isAudioMuted: isAudioMuted,
                isVideoMuted: State(!isVideoMuted.data),
                isUsingFrontCamera: isUsingFrontCamera,
              ),
            );
          },
          changeControlFailure:
              (isAudioMuted, isVideoMuted, isUsingFrontCamera, _) {
            emit(
              VideoCallControlState.initial(
                isAudioMuted: isAudioMuted,
                isVideoMuted: State(!isVideoMuted.data),
                isUsingFrontCamera: isUsingFrontCamera,
              ),
            );
          },
        );
      },
    );
  }
}
