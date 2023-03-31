import 'package:agora_rtc_engine/agora_rtc_engine.dart';

import '../../core/utils/logger.dart';

abstract class VideoCallLocalDataSource {
  void setEngine(RtcEngine engine);

  Future<void> init(String appId);

  void setObserver();

  void removeObserver();
}

class VideoCallLocalDataSourceImpl implements VideoCallLocalDataSource {
  late RtcEngine _engine;
  late AudioFrameObserver _audioFrameObserver;
  late VideoFrameObserver _videoFrameObserver;

  @override
  Future<void> init(String appId) async {
    await _engine.initialize(RtcEngineContext(appId: appId));

    _audioFrameObserver = AudioFrameObserver(
        onRecordAudioFrame: (String channelId, AudioFrame audioFrame) {
      // Gets the captured audio frame
    }, onPlaybackAudioFrame: (String channelId, AudioFrame audioFrame) {
      // Gets the audio frame for playback
      Logger.print('[onPlaybackAudioFrame] audioFrame: ${audioFrame.toJson()}');
    });

    _videoFrameObserver = VideoFrameObserver(
        onCaptureVideoFrame: (VideoFrame videoFrame) {
      // The video data that this callback gets has not been pre-processed
      // After pre-processing, you can send the processed video data back
      // to the SDK through this callback
      Logger.print('[onCaptureVideoFrame] videoFrame: ${videoFrame.toJson()}');
    }, onRenderVideoFrame:
            (String channelId, int remoteUid, VideoFrame videoFrame) {
      // Occurs each time the SDK receives a video frame sent by the remote user.
      // In this callback, you can get the video data before encoding.
      // You then process the data according to your particular scenario.
    });
  }

  @override
  void setEngine(RtcEngine engine) {
    _engine = engine;
  }

  @override
  void setObserver() {
    // Set the format of raw audio data.
    int sampleRate = 16000, sampleNumOfChannel = 1, samplesPerCall = 1024;

    _engine.setRecordingAudioFrameParameters(
        sampleRate: sampleRate,
        channel: sampleNumOfChannel,
        mode: RawAudioFrameOpModeType.rawAudioFrameOpModeReadWrite,
        samplesPerCall: samplesPerCall);
    _engine.setPlaybackAudioFrameParameters(
        sampleRate: sampleRate,
        channel: sampleNumOfChannel,
        mode: RawAudioFrameOpModeType.rawAudioFrameOpModeReadWrite,
        samplesPerCall: samplesPerCall);
    _engine.setMixedAudioFrameParameters(
        sampleRate: sampleRate,
        channel: sampleNumOfChannel,
        samplesPerCall: samplesPerCall);

    _engine.getMediaEngine().registerAudioFrameObserver(_audioFrameObserver);
    _engine.getMediaEngine().registerVideoFrameObserver(_videoFrameObserver);
  }

  @override
  void removeObserver() {
    _engine.getMediaEngine().unregisterAudioFrameObserver(_audioFrameObserver);
    _engine.getMediaEngine().unregisterVideoFrameObserver(_videoFrameObserver);
  }
}
