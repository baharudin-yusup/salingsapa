part of 'video_call_caption_bloc.dart';

@freezed
class VideoCallCaptionState with _$VideoCallCaptionState {
  const factory VideoCallCaptionState.initial({
    @Default(false) bool isEnabled,
    @Default([]) List<Caption> localCaptions,
    String? remoteCaptions,
  }) = _Initial;

  const factory VideoCallCaptionState.toggleFeatureFailure({
    required bool isEnabled,
    required List<Caption> localCaptions,
    required String? remoteCaptions,
    required Failure failure,
  }) = _ToggleFeatureFailure;

  const factory VideoCallCaptionState.updateRemoteCaptionFailure({
    required bool isEnabled,
    required List<Caption> localCaptions,
    required String? remoteCaptions,
    required Failure failure,
  }) = _UpdateRemoteCaptionFailure;

  const factory VideoCallCaptionState.uploadCaptionFailure({
    required bool isEnabled,
    required List<Caption> localCaptions,
    required String? remoteCaptions,
    required Failure failure,
  }) = _UploadCaptionFailure;
}

extension VideoCallCaptionStateSpecialMethod on VideoCallCaptionState {
  VideoCallCaptionState toInitial({
    bool? isEnabled,
    List<Caption>? localCaptions,
    String? remoteCaptions,
  }) {
    return VideoCallCaptionState.initial(
      isEnabled: isEnabled ?? this.isEnabled,
      localCaptions: localCaptions ?? this.localCaptions,
      remoteCaptions: remoteCaptions,
    );
  }

  VideoCallCaptionState toToggleFeatureFailure(Failure failure) {
    return VideoCallCaptionState.toggleFeatureFailure(
      isEnabled: isEnabled,
      localCaptions: localCaptions,
      remoteCaptions: remoteCaptions,
      failure: failure,
    );
  }

  VideoCallCaptionState toUpdateRemoteCaptionFailure(Failure failure) {
    return VideoCallCaptionState.updateRemoteCaptionFailure(
      isEnabled: isEnabled,
      localCaptions: localCaptions,
      remoteCaptions: remoteCaptions,
      failure: failure,
    );
  }

  VideoCallCaptionState toUploadCaptionFailure(Failure failure) {
    return VideoCallCaptionState.uploadCaptionFailure(
      isEnabled: isEnabled,
      localCaptions: localCaptions,
      remoteCaptions: remoteCaptions,
      failure: failure,
    );
  }
}

extension CaptionExtractor on List<Caption> {
  String? extract() {
    final validCaptions = map((e) => e.rawData);
    if (validCaptions.isEmpty) return null;
    return validCaptions.reduce((value, element) => '$value $element').trim();
  }

  Caption? combine() {
    if (isEmpty) return null;
    return reduce(
      (a, b) => Caption(
        captionId: b.captionId,
        rawData: '${a.rawData} ${b.rawData}',
        createdAt: b.createdAt,
        userId: b.userId,
      ),
    );
  }
}
