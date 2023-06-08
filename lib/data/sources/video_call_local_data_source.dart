import 'dart:async';

import 'package:agora_rtc_engine/agora_rtc_engine.dart';
import 'package:path_provider/path_provider.dart';
import 'package:rxdart/rxdart.dart';
import 'package:uuid/uuid.dart';

import '../../core/utils/logger.dart';
import '../models/video_frame_model.dart';

abstract class VideoCallLocalDataSource {
  void setEngine(RtcEngine engine);

  Future<void> init(String appId);

  Future<void> setObserver();

  Future<void> removeObserver();

  Stream<SalingsapaVideoFrameModel> get videoFrame;
}

const _tagName = 'VideoCallLocalDataSource';

class VideoCallLocalDataSourceImpl implements VideoCallLocalDataSource {
  late RtcEngine _engine;
  late AudioFrameObserver _audioFrameObserver;
  late VideoFrameObserver _videoFrameObserver;

  bool _isNeedToSendVideoFrame = true;
  late BehaviorSubject<SalingsapaVideoFrameModel> _videoFrameController;
  late Timer _videoFrameSendTimer;

  @override
  Future<void> init(String appId) async {
    await _engine.initialize(RtcEngineContext(appId: appId));
  }

  @override
  void setEngine(RtcEngine engine) {
    _engine = engine;
  }

  @override
  Future<void> setObserver() async {
    _videoFrameSendTimer =
        Timer.periodic(const Duration(milliseconds: 300), (timer) {
      if (_videoFrameController.isClosed) {
        _isNeedToSendVideoFrame = false;
        timer.cancel();
        return;
      }

      _isNeedToSendVideoFrame = true;
    });
    _videoFrameController = BehaviorSubject();

    // _audioFrameObserver = AudioFrameObserver(
    //     onRecordAudioFrame: (String channelId, AudioFrame audioFrame) {},
    //     onPlaybackAudioFrame: (String channelId, AudioFrame audioFrame) {
    //       // Gets the audio frame for playback
    //       Logger.print(
    //           '[onPlaybackAudioFrame] audioFrame: ${audioFrame.toJson()}');
    //     });

    _videoFrameObserver = VideoFrameObserver(
      onCaptureVideoFrame: (VideoFrame videoFrame) {
        // The video data that this callback gets has not been pre-processed
        // After pre-processing, you can send the processed video data back
        // to the SDK through this callback
        if (!_isNeedToSendVideoFrame || _videoFrameController.isClosed) return;
        _isNeedToSendVideoFrame = false;
        Logger.print(
          'frame type: ${videoFrame.type?.name}\n'
          'rotation: ${videoFrame.rotation}\n',
          name: _tagName,
        );
        final y = videoFrame.yBuffer;
        final yS = videoFrame.yStride;

        final u = videoFrame.uBuffer;
        final uS = videoFrame.uStride;

        final v = videoFrame.vBuffer;
        final vS = videoFrame.vStride;

        final width = videoFrame.width;
        final height = videoFrame.height;

        if (y == null ||
            yS == null ||
            u == null ||
            uS == null ||
            v == null ||
            vS == null ||
            width == null ||
            height == null) {
          Logger.print(
            'some YUV data not available',
            name: _tagName,
          );
          return;
        }
        final yL = y.length;
        final uL = u.length;
        final vL = v.length;

        Logger.print(
          'YUV:\n'
          'd: ${width}x$height\n'
          'yL: $yL \t yS: $yS \t r: ${yL / yS}\n'
          'uL: $uL \t uS: $uS \t r: ${uL / uS}\n'
          'vL: $vL \t vS: $vS \t r: ${vL / vS}\n',
          name: _tagName,
        );
        final model = SalingsapaVideoFrameModel(
          y: y,
          u: u,
          v: v,
          width: width,
          height: height,
        );
        _videoFrameController.sink.add(model);
      },
      onRenderVideoFrame:
          (String channelId, int remoteUid, VideoFrame videoFrame) {
        // Occurs each time the SDK receives a video frame sent by the remote user.
        // In this callback, you can get the video data before encoding.
        // You then process the data according to your particular scenario.
      },
    );

    // Set the format of raw audio data.
    // int sampleRate = 16000, sampleNumOfChannel = 1, samplesPerCall = 1024;

    // _engine.setRecordingAudioFrameParameters(
    //     sampleRate: sampleRate,
    //     channel: sampleNumOfChannel,
    //     mode: RawAudioFrameOpModeType.rawAudioFrameOpModeReadWrite,
    //     samplesPerCall: samplesPerCall);
    // _engine.setPlaybackAudioFrameParameters(
    //     sampleRate: sampleRate,
    //     channel: sampleNumOfChannel,
    //     mode: RawAudioFrameOpModeType.rawAudioFrameOpModeReadWrite,
    //     samplesPerCall: samplesPerCall);
    // _engine.setMixedAudioFrameParameters(
    //     sampleRate: sampleRate,
    //     channel: sampleNumOfChannel,
    //     samplesPerCall: samplesPerCall);

    // _engine.getMediaEngine().registerAudioFrameObserver(_audioFrameObserver);
    // _engine.getMediaEngine().registerVideoFrameObserver(_videoFrameObserver);

    _videoFrameSendTimer =
        Timer.periodic(const Duration(milliseconds: 750), (timer) async {
      var appDocumentsDir = (await getExternalStorageDirectory())!.path;
      if (appDocumentsDir.substring(appDocumentsDir.length - 1) == '/') {
        appDocumentsDir =
            appDocumentsDir.substring(0, appDocumentsDir.length - 1);
      }

      const uuid = Uuid();
      final filePath = '$appDocumentsDir/${uuid.v1()}.jpg';
      await _engine.takeSnapshot(uid: 0, filePath: filePath);
    });
  }

  @override
  Future<void> removeObserver() async {
    // _engine.getMediaEngine().unregisterAudioFrameObserver(_audioFrameObserver);
    // _engine.getMediaEngine().unregisterVideoFrameObserver(_videoFrameObserver);

    await _videoFrameController.close();
    _videoFrameSendTimer.cancel();
  }

  @override
  Stream<SalingsapaVideoFrameModel> get videoFrame =>
      _videoFrameController.stream;
}
