part of 'speech_recognition_bloc.dart';

@freezed
class SpeechRecognitionEvent with _$SpeechRecognitionEvent {
  const factory SpeechRecognitionEvent.started() = _Started;

  const factory SpeechRecognitionEvent.toggleFeatureStarted(
      [@Default(false) bool isEnabled]) = _ToggleFeatureStarted;

  const factory SpeechRecognitionEvent.statusChanged(RecognitionStatus status) =
      _StatusChanged;

  const factory SpeechRecognitionEvent.captionReceived(Caption caption) =
      _CaptionReceived;
}
