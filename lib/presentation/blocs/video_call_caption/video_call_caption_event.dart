part of 'video_call_caption_bloc.dart';

@freezed
class VideoCallCaptionEvent with _$VideoCallCaptionEvent {
  const factory VideoCallCaptionEvent.started(Room room) = _Started;

  const factory VideoCallCaptionEvent.toggleFeatureStarted() =
      _ToggleFeatureStarted;

  const factory VideoCallCaptionEvent.updateRemoteCaptionStarted({
    @Default([]) final List<Caption> captions,
    final Failure? failure,
  }) = _UpdateRemoteCaptionStarted;

  const factory VideoCallCaptionEvent.localCaptionReceived(
      [@Default(null) Caption? caption]) = _LocalCaptionReceived;

  const factory VideoCallCaptionEvent.uploadCaptionStarted(Caption caption) =
      _UploadCaptionStarted;
}
