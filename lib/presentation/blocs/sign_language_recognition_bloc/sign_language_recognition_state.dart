part of 'sign_language_recognition_bloc.dart';

@freezed
class SignLanguageRecognitionState with _$SignLanguageRecognitionState {
  const factory SignLanguageRecognitionState.initial({
    @Default(false) bool isReady,
    @Default(RecognitionStatus.off) RecognitionStatus status,
    @Default(null) Caption? caption,
  }) = _Initial;

  const factory SignLanguageRecognitionState.failure({
    required bool isReady,
    required RecognitionStatus status,
    required Caption? caption,
    required Failure failure,
  }) = _Failure;

  const factory SignLanguageRecognitionState.updateCaptionSuccess({
    @Default(false) bool isReady,
    @Default(RecognitionStatus.off) RecognitionStatus status,
    required Caption caption,
  }) = _UpdateCaptionSuccess;
}

extension SignLanguageRecognitionStateMethods on SignLanguageRecognitionState {
  SignLanguageRecognitionState toInitial({
    bool? isReady,
    RecognitionStatus? status,
  }) {
    return SignLanguageRecognitionState.initial(
      isReady: isReady ?? this.isReady,
      status: status ?? this.status,
    );
  }

  SignLanguageRecognitionState toFailure(Failure failure) {
    return SignLanguageRecognitionState.failure(
      isReady: isReady,
      status: status,
      caption: caption,
      failure: failure,
    );
  }

  SignLanguageRecognitionState toUpdateCaptionSuccess(Caption caption) {
    return SignLanguageRecognitionState.updateCaptionSuccess(
      isReady: isReady,
      status: status,
      caption: caption,
    );
  }

  bool get isEnabled => isReady && status != RecognitionStatus.off;
}
