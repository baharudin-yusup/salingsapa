import 'dart:async';

import 'package:agora_rtc_engine/agora_rtc_engine.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/errors/failure.dart';
import '../../../core/utils/logger.dart';
import '../../../domain/entities/caption.dart';
import '../../../domain/entities/recognition_status.dart';
import '../../../domain/entities/video_frame.dart';
import '../../../domain/usecases/close_sign_language_recognition.dart';
import '../../../domain/usecases/disable_sign_language_recognition.dart';
import '../../../domain/usecases/enable_sign_language_recognition.dart';
import '../../../domain/usecases/init_sign_language_recognition.dart';
import '../../../domain/usecases/reset_sign_language_recognition.dart';
import '../../../domain/usecases/start_sign_language_recognition.dart';
import '../../../domain/usecases/stream_photo_snapshot.dart';
import '../../../domain/usecases/stream_sign_language_recognition_result.dart';
import '../../../domain/usecases/stream_sign_language_recognition_status.dart';

part 'sign_language_recognition_bloc.freezed.dart';

part 'sign_language_recognition_event.dart';

part 'sign_language_recognition_state.dart';

const _tagName = 'SignLanguageRecognitionBloc';

class SignLanguageRecognitionBloc
    extends Bloc<SignLanguageRecognitionEvent, SignLanguageRecognitionState> {
  final InitSignLanguageRecognition _initSignLanguageRecognition;
  final EnableSignLanguageRecognition _enableSignLanguageRecognition;
  final DisableSignLanguageRecognition _disableSignLanguageRecognition;
  final CloseSignLanguageRecognition _closeSignLanguageRecognition;
  final StreamSignLanguageRecognitionResult _signLanguageRecognitionResult;
  final StreamSignLanguageRecognitionStatus _signLanguageRecognitionStatus;
  final StartSignLanguageRecognition _startSignLanguageRecognition;
  final ResetSignLanguageRecognition _resetSignLanguageRecognition;
  final StreamPhotoSnapshot _streamPhotoSnapshot;

  StreamSubscription<Either<Failure, PhotoSnapshot>>?
      _photoSnapshotSubscription;
  StreamSubscription<Either<Failure, Caption>>? _captionSubscription;

  SignLanguageRecognitionBloc(
    this._enableSignLanguageRecognition,
    this._disableSignLanguageRecognition,
    this._signLanguageRecognitionResult,
    this._initSignLanguageRecognition,
    this._signLanguageRecognitionStatus,
    this._closeSignLanguageRecognition,
    this._streamPhotoSnapshot,
    this._startSignLanguageRecognition,
    this._resetSignLanguageRecognition,
  ) : super(const SignLanguageRecognitionState.initial()) {
    on<_Started>(_initSignLanguageFeature);
    on<_ToggleFeatureStarted>(_toggleFeature);
    on<_StatusChanged>(_updateFeatureStatus);
    on<_PhotoSnapshotReceived>(_recognizePhotoSnapshot);
    on<_CaptionReceived>(_setCaption);
    on<_ResetDataStarted>(_resetCaption);

    _signLanguageRecognitionStatus().listen((statusResult) {
      statusResult.fold(
        (l) => null,
        (status) {
          if (isClosed) return;
          if (!state.isReady) return;
          add(SignLanguageRecognitionEvent.statusChanged(status));
        },
      );
    });
  }

  @override
  Future<void> close() async {
    await _closeSignLanguageRecognition();
    await _captionSubscription?.cancel();
    await _photoSnapshotSubscription?.cancel();
    return await super.close();
  }

  void _initSignLanguageFeature(
      _Started event, Emitter<SignLanguageRecognitionState> emit) async {
    final initResult = await _initSignLanguageRecognition();
    initResult.fold(
      (l) => null,
      (_) {
        Logger.print(
          'initializing bloc success',
          name: _tagName,
        );
        emit(state.copyWith(isReady: true));
      },
    );
  }

  void _toggleFeature(_ToggleFeatureStarted event,
      Emitter<SignLanguageRecognitionState> emit) async {
    final isNeedToEnable = event.isEnabled;
    if ((isNeedToEnable && state.status != RecognitionStatus.off) ||
        (!isNeedToEnable && state.status == RecognitionStatus.off)) {
      Logger.print(
        'no need do ${isNeedToEnable ? 'enable' : 'disable'} the current status is ${state.status}',
        name: _tagName,
      );
      return;
    }

    final result = await (isNeedToEnable
        ? _enableSignLanguageRecognition()
        : _disableSignLanguageRecognition());
    result.fold(
      (failure) {
        Logger.error(
          failure,
          event: '${isNeedToEnable ? 'enabling' : 'disabling'} feature',
          name: _tagName,
        );
        emit(state.toFailure(failure));
      },
      (result) {
        Logger.print(
          'enabling feature success',
          name: _tagName,
        );
      },
    );
  }

  void _recognizePhotoSnapshot(_PhotoSnapshotReceived event,
      Emitter<SignLanguageRecognitionState> emit) async {
    await _startSignLanguageRecognition(event.photoSnapshot);
  }

  void _updateFeatureStatus(
      _StatusChanged event, Emitter<SignLanguageRecognitionState> emit) async {
    final status = event.status;

    Logger.print(
      'feature status: $status',
      name: _tagName,
    );
    switch (status) {
      case RecognitionStatus.off:
        await _captionSubscription?.cancel();
        await _photoSnapshotSubscription?.cancel();
        break;
      case RecognitionStatus.on:
        _captionSubscription =
            _signLanguageRecognitionResult().listen((result) {
          result.fold(
            (l) => null,
            (caption) {
              if (isClosed) return;
              if (!state.isEnabled) return;
              add(SignLanguageRecognitionEvent.captionReceived(caption));
            },
          );
        });
        _photoSnapshotSubscription =
            _streamPhotoSnapshot().listen((photoSnapshotResult) {
          photoSnapshotResult.fold(
            (l) => null,
            (frame) {
              if (isClosed) return;
              if (!state.isEnabled) return;
              add(SignLanguageRecognitionEvent.photoSnapshotReceived(frame));
            },
          );
        });
        break;
      case RecognitionStatus.listening:
        // TODO: Handle this case.
        break;
      case RecognitionStatus.idle:
        // TODO: Handle this case.
        break;
    }
    emit(state.copyWith(status: status));
  }

  void _setCaption(_CaptionReceived event,
      Emitter<SignLanguageRecognitionState> emit) async {
    emit(state.toUpdateCaptionSuccess(event.caption));
  }

  void _resetCaption(_ResetDataStarted event,
      Emitter<SignLanguageRecognitionState> emit) async {
    await _resetSignLanguageRecognition();
  }
}
