import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/utils/logger.dart';
import '../../../domain/entities/caption.dart';
import '../../../domain/entities/recognition_status.dart';
import '../../../domain/errors/failure.dart';
import '../../../domain/usecases/disable_speech_recognition.dart';
import '../../../domain/usecases/enable_speech_recognition.dart';
import '../../../domain/usecases/init_speech_recognition.dart';
import '../../../domain/usecases/stream_speech_recognition_result.dart';
import '../../../domain/usecases/stream_speech_recognition_status.dart';
import '../data_state.dart';

part 'speech_recognition_bloc.freezed.dart';
part 'speech_recognition_event.dart';
part 'speech_recognition_state.dart';

class SpeechRecognitionBloc
    extends Bloc<SpeechRecognitionEvent, SpeechRecognitionState> {
  SpeechRecognitionBloc(
    this._initSpeechRecognition,
    this._enableSpeechRecognition,
    this._disableSpeechRecognition,
    this._speechRecognitionResult,
    this._speechRecognitionStatus,
  ) : super(const SpeechRecognitionState.initial()) {
    on<_Started>(_initializeFeature);
    on<_ToggleFeatureStarted>(_toggleFeature);
    on<_CaptionReceived>(_assignCaption);
    on<_StatusChanged>(_updateFeatureStatus);

    _speechRecognitionStatus().listen((statusResult) {
      statusResult.fold(
        (l) => null,
        (status) {
          if (!isClosed) {
            add(SpeechRecognitionEvent.statusChanged(status));
          }
        },
      );
    });
    _captionResultController =
        _speechRecognitionResult().listen((captionResult) {
      captionResult.fold(
        (failure) => null,
        (caption) {
          if (isClosed) {
            return;
          }
          Logger.print(
              'Speech recognition caption result = ${caption.rawData}');
          add(SpeechRecognitionEvent.captionReceived(caption));
        },
      );
    });
  }

  final InitSpeechRecognition _initSpeechRecognition;
  final EnableSpeechRecognition _enableSpeechRecognition;
  final DisableSpeechRecognition _disableSpeechRecognition;
  final StreamSpeechRecognitionResult _speechRecognitionResult;
  final StreamSpeechRecognitionStatus _speechRecognitionStatus;

  StreamSubscription<Either<Failure, Caption>>? _captionResultController;

  @override
  Future<void> close() async {
    await _captionResultController?.cancel();
    return await super.close();
  }

  void _initializeFeature(
      _Started event, Emitter<SpeechRecognitionState> emit) async {
    final initSpeechRecognitionResult = await _initSpeechRecognition();
    initSpeechRecognitionResult.fold(
      (failure) {
        state.maybeWhen(
          initial: (isReady, status) {
            emit(SpeechRecognitionState.failure(
                isReady: isReady, status: status, failure: failure));
          },
          failure: (isReady, status, _) {
            emit(SpeechRecognitionState.failure(
                isReady: isReady, status: status, failure: failure));
          },
          orElse: () {
            // Unexpected state
            // TODO: Handle this case
            Logger.error('Unexpected state', event: 'initializing feature');
          },
        );
      },
      (_) {
        state.maybeWhen(
          initial: (_, status) {
            emit(SpeechRecognitionState.initial(isReady: true, status: status));
          },
          failure: (_, status, __) {
            emit(SpeechRecognitionState.initial(isReady: true, status: status));
          },
          orElse: () {
            // Unexpected state
            // TODO: Handle this case
            Logger.error('Unexpected state', event: 'initializing feature');
          },
        );
      },
    );
  }

  void _toggleFeature(
      _ToggleFeatureStarted event, Emitter<SpeechRecognitionState> emit) async {
    final isPreConditionValid = state.when(
      initial: (isReady, status) {
        if (status.isLoading) {
          return false;
        }

        /// Handle case when user already request want to
        /// enable the feature twice
        if (event.isEnabled && state.status.data != RecognitionStatus.off) {
          return false;
        }

        /// Handle case when user already request want to
        /// disable the feature twice
        if (!event.isEnabled && state.status.data == RecognitionStatus.off) {
          return false;
        }

        emit(SpeechRecognitionState.initial(
            isReady: isReady, status: status.copyWith(isLoading: true)));
        return true;
      },
      failure: (isReady, status, _) {
        if (status.isLoading) {
          return false;
        }

        /// Handle case when user already request want to
        /// enable the feature twice
        if (event.isEnabled && state.status.data != RecognitionStatus.off) {
          return false;
        }

        /// Handle case when user already request want to
        /// disable the feature twice
        if (!event.isEnabled && state.status.data == RecognitionStatus.off) {
          return false;
        }

        emit(SpeechRecognitionState.initial(
            isReady: isReady, status: status.copyWith(isLoading: true)));
        return true;
      },
      captionReceiveSuccess: (isReady, status, caption) {
        if (status.isLoading) {
          return false;
        }

        /// Handle case when user already request want to
        /// enable the feature twice
        if (event.isEnabled && state.status.data != RecognitionStatus.off) {
          return false;
        }

        /// Handle case when user already request want to
        /// disable the feature twice
        if (!event.isEnabled && state.status.data == RecognitionStatus.off) {
          return false;
        }

        emit(SpeechRecognitionState.initial(
            isReady: isReady, status: status.copyWith(isLoading: true)));
        return true;
      },
    );

    if (!isPreConditionValid) {
      return;
    }

    /// TODO: Remove this delay
    ///
    /// Reason why I add delay is to give system enable/disable the audio first
    /// before activating/deactivating the feature
    ///
    /// Possible way to handle this is we need one more condition and then
    /// use that condition after successfully enable/disable the audio
    ///
    /// So the valid flow will be like this
    /// 1. Add enable/disable event + toggle speech recognition started event
    /// 2. When enable/disable success then add continue toggle speech recognition event
    /// 3. Execute below use case
    Future.delayed(const Duration(milliseconds: 500), () async {
      final toggleFeatureResult = await (event.isEnabled
          ? _enableSpeechRecognition()
          : _disableSpeechRecognition());
      toggleFeatureResult.fold(
        (failure) {
          state.when(
            initial: (isReady, status) {
              if (isClosed) {
                return;
              }
              emit(SpeechRecognitionState.failure(
                  isReady: isReady,
                  status: status.copyWith(isLoading: false),
                  failure: failure));
            },
            failure: (isReady, status, _) {
              if (isClosed) {
                return;
              }
              emit(SpeechRecognitionState.failure(
                  isReady: isReady,
                  status: status.copyWith(isLoading: false),
                  failure: failure));
            },
            captionReceiveSuccess: (isReady, status, _) {
              if (isClosed) {
                return;
              }
              emit(SpeechRecognitionState.failure(
                  isReady: isReady,
                  status: status.copyWith(isLoading: false),
                  failure: failure));
            },
          );
        },
        (_) => null,
      );
    });
  }

  void _assignCaption(
      _CaptionReceived event, Emitter<SpeechRecognitionState> emit) async {
    if (!state.isReady) {
      Logger.print('Speech recognition feature is not ready');
      return;
    }
    final caption = event.caption;
    state.when(
      initial: (isReady, status) {
        emit(SpeechRecognitionState.captionReceiveSuccess(
            isReady: isReady, status: status, caption: caption));
      },
      failure: (isReady, status, _) {
        emit(SpeechRecognitionState.captionReceiveSuccess(
            isReady: isReady, status: status, caption: caption));
      },
      captionReceiveSuccess: (isReady, status, _) {
        emit(SpeechRecognitionState.captionReceiveSuccess(
            isReady: isReady, status: status, caption: caption));
      },
    );
  }

  void _updateFeatureStatus(
      _StatusChanged event, Emitter<SpeechRecognitionState> emit) async {
    final newStatus = event.status;
    switch (newStatus) {
      case RecognitionStatus.off:
        if (isClosed) {
          return;
        }
        state.maybeWhen(
          initial: (isReady, _) {
            emit(SpeechRecognitionState.initial(
                isReady: isReady, status: DataState(newStatus)));
          },
          captionReceiveSuccess: (isReady, _, caption) {
            // Trigger the upload caption
            emit(SpeechRecognitionState.captionReceiveSuccess(
                isReady: isReady,
                status: DataState(newStatus),
                caption: caption));

            emit(SpeechRecognitionState.initial(
                isReady: isReady, status: DataState(newStatus)));
          },
          orElse: () {},
        );
        break;
      case RecognitionStatus.on:
        if (isClosed) {
          return;
        }
        state.maybeWhen(
          initial: (isReady, _) {
            emit(SpeechRecognitionState.initial(
                isReady: isReady, status: DataState(newStatus)));
          },
          orElse: () {},
        );
        break;
      // Handle not final state
      case RecognitionStatus.listening:
        if (isClosed) {
          return;
        }
        state.maybeWhen(
          initial: (isReady, _) {
            emit(SpeechRecognitionState.initial(
                isReady: isReady, status: DataState(newStatus)));
          },
          captionReceiveSuccess: (isReady, _, caption) {
            emit(SpeechRecognitionState.captionReceiveSuccess(
                isReady: isReady,
                status: DataState(newStatus),
                caption: caption));
          },
          orElse: () {},
        );
        break;
      case RecognitionStatus.idle:
        // TODO: Handle this case.
        break;
    }
  }
}
