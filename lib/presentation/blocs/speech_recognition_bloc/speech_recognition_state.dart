part of 'speech_recognition_bloc.dart';

@freezed
class SpeechRecognitionState with _$SpeechRecognitionState {
  const factory SpeechRecognitionState.initial({
    @Default(false) bool isReady,
    @Default(RecognitionStatus.off) RecognitionStatus status,
  }) = _Initial;

  const factory SpeechRecognitionState.failure({
    required bool isReady,
    required RecognitionStatus status,
    required Failure failure,
  }) = _Failure;

  const factory SpeechRecognitionState.caption({
    required bool isReady,
    required RecognitionStatus status,
    required Caption caption,
  }) = _Caption;
}

extension SpeechRecognitionStateMethods on SpeechRecognitionState {
  SpeechRecognitionState toInitial({
    bool? isReady,
    RecognitionStatus? status,
  }) {
    return SpeechRecognitionState.initial(
      isReady: isReady ?? this.isReady,
      status: status ?? this.status,
    );
  }

  SpeechRecognitionState toFailure(Failure failure) {
    return SpeechRecognitionState.failure(
      isReady: isReady,
      status: status,
      failure: failure,
    );
  }

  SpeechRecognitionState toCaptionReceived(Caption caption) {
    return SpeechRecognitionState.caption(
      isReady: isReady,
      status: status,
      caption: caption,
    );
  }

  bool get isEnabled => status != RecognitionStatus.off;
}
