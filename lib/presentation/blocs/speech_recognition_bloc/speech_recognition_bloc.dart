import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/errors/failures.dart';
import '../../../domain/entities/caption.dart';
import '../../../domain/entities/recognition_status.dart';
import '../../../domain/usecases/disable_speech_recognition.dart';
import '../../../domain/usecases/enable_speech_recognition.dart';
import '../../../domain/usecases/init_speech_recognition.dart';
import '../../../domain/usecases/stream_speech_recognition_result.dart';
import '../../../domain/usecases/stream_speech_recognition_status.dart';
import '../../utils/toggle_usecase.dart';

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
      (failure) => emit(state.toFailure(failure)),
      (_) => emit(state.toInitial(isReady: true)),
    );
  }

  void _toggleFeature(
      _ToggleFeatureStarted event, Emitter<SpeechRecognitionState> emit) async {
    final isNeedToEnable = event.isEnabled;
    if ((isNeedToEnable && state.status != RecognitionStatus.off) ||
        (!isNeedToEnable && state.status == RecognitionStatus.off)) {
      return;
    }

    await toggleUseCase(
        (isNeedToEnable ? _enableSpeechRecognition : _disableSpeechRecognition).call);
  }

  void _assignCaption(
      _CaptionReceived event, Emitter<SpeechRecognitionState> emit) async {
    emit(state.toCaptionReceived(event.caption));
  }

  void _updateFeatureStatus(
      _StatusChanged event, Emitter<SpeechRecognitionState> emit) async {
    final status = event.status;
    switch (status) {
      case RecognitionStatus.off:
        await _captionResultController?.cancel();
        break;
      case RecognitionStatus.on:
        _captionResultController =
            _speechRecognitionResult().listen((videoFrameResult) {
          videoFrameResult.fold(
            (failure) => null,
            (caption) => add(SpeechRecognitionEvent.captionReceived(caption)),
          );
        });
        break;
      case RecognitionStatus.listening:
        break;
      case RecognitionStatus.idle:
        // TODO: Handle this case.
        break;
    }
    emit(state.copyWith(status: status));
  }
}
