part of 'speech_recognition_bloc.dart';

@freezed
class SpeechRecognitionState with _$SpeechRecognitionState {
  const factory SpeechRecognitionState.initial({
    @Default(false) bool isReady,
    @Default(DataState(RecognitionStatus.off))
    DataState<RecognitionStatus> status,
  }) = _Initial;

  const factory SpeechRecognitionState.failure({
    required bool isReady,
    required DataState<RecognitionStatus> status,
    required Failure failure,
  }) = _Failure;

  const factory SpeechRecognitionState.captionReceiveSuccess({
    required bool isReady,
    required DataState<RecognitionStatus> status,
    required Caption caption,
  }) = _CaptionReceiveSuccess;
}

extension SpeechRecognitionStateMethods on SpeechRecognitionState {
  bool get isEnabled => status.data != RecognitionStatus.off;
}
