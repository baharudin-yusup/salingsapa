part of 'sign_language_recognition_bloc.dart';

@freezed
class SignLanguageRecognitionEvent with _$SignLanguageRecognitionEvent {
  const factory SignLanguageRecognitionEvent.started(RtcEngine engine) =
      _Started;

  const factory SignLanguageRecognitionEvent.toggleFeatureStarted(
      [@Default(false) bool isEnabled]) = _ToggleFeatureStarted;

  const factory SignLanguageRecognitionEvent.photoSnapshotReceived(
      PhotoSnapshot photoSnapshot) = _PhotoSnapshotReceived;

  const factory SignLanguageRecognitionEvent.statusChanged(
      RecognitionStatus status) = _StatusChanged;

  const factory SignLanguageRecognitionEvent.captionReceived(Caption caption) =
      _CaptionReceived;

  const factory SignLanguageRecognitionEvent.resetDataStarted() =
      _ResetDataStarted;
}
