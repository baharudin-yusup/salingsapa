import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/errors/failure.dart';
import '../../../core/utils/logger.dart';
import '../../../domain/usecases/flip_video_call_camera.dart';
import '../../../domain/usecases/mute_video_call_audio.dart';
import '../../../domain/usecases/mute_video_call_video.dart';
import '../data_state.dart';

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
    on<_ChangeAudioFeatureStarted>(_onChangeAudioFeature);
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
                isUsingFrontCamera: DataState(!state.isUsingFrontCamera.data),
              ),
            );
          },
          changeControlFailure:
              (isAudioMuted, isVideoMuted, isUsingFrontCamera, _) {
            emit(
              VideoCallControlState.initial(
                isAudioMuted: isAudioMuted,
                isVideoMuted: isVideoMuted,
                isUsingFrontCamera: DataState(!state.isUsingFrontCamera.data),
              ),
            );
          },
        );
      },
    );
  }

  void _onChangeAudioFeature(_ChangeAudioFeatureStarted event,
      Emitter<VideoCallControlState> emit) async {
    Logger.print('changing audio feature started...');
    final isPreConditionValid = state.when(
      initial: (isAudioMuted, isVideoMuted, isUsingFrontCamera) {
        if (isAudioMuted.isLoading) {
          Logger.print('changing audio feature is in progress!');
          return false;
        }
        Logger.print('changing audio feature from idle to in progress');
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
          Logger.print('changing audio feature is in progress!');
          return false;
        }
        Logger.print('changing audio feature from idle to in progress');
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
      Logger.error(
          'pre condition is not valid, current state is ${state.runtimeType} and current status is ${state.isAudioMuted.isLoading ? 'is loading' : 'is idle'}',
          event: 'changing audio feature');
      return;
    }

    final isDisabled = event.isDisabled ?? !state.isAudioMuted.data;
    final toggleAudioMuteFeature = await _muteVideoCallAudio(isDisabled);
    toggleAudioMuteFeature.fold(
      (failure) {
        Logger.error(failure, event: 'changing audio feature');
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
            Logger.print(
                'changing audio feature to ${isDisabled ? 'disabled' : 'enabled'} success!');
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
                isAudioMuted: DataState(!isAudioMuted.data),
                isVideoMuted: isVideoMuted,
                isUsingFrontCamera: isUsingFrontCamera,
              ),
            );
          },
          changeControlFailure:
              (isAudioMuted, isVideoMuted, isUsingFrontCamera, _) {
            emit(
              VideoCallControlState.initial(
                isAudioMuted: DataState(!isAudioMuted.data),
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
                isVideoMuted: DataState(!isVideoMuted.data),
                isUsingFrontCamera: isUsingFrontCamera,
              ),
            );
          },
          changeControlFailure:
              (isAudioMuted, isVideoMuted, isUsingFrontCamera, _) {
            emit(
              VideoCallControlState.initial(
                isAudioMuted: isAudioMuted,
                isVideoMuted: DataState(!isVideoMuted.data),
                isUsingFrontCamera: isUsingFrontCamera,
              ),
            );
          },
        );
      },
    );
  }
}
