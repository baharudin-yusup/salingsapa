import 'dart:async';

import 'package:agora_rtc_engine/agora_rtc_engine.dart';
import 'package:path_provider/path_provider.dart';
import 'package:rxdart/rxdart.dart';
import 'package:uuid/uuid.dart';

import '../../../core/errors/exception.dart';
import '../../../core/utils/logger.dart';
import '../../models/video_frame_model.dart';

abstract class VideoCallLocalDataSource {
  void setEngine(RtcEngine engine);

  Future<void> init(String appId);

  Future<void> setObserver();

  Future<void> removeObserver();

  Stream<SalingsapaVideoFrameModel> get videoFrame;
}

class VideoCallLocalDataSourceImpl implements VideoCallLocalDataSource {
  RtcEngine? _rtcEngine;

  RtcEngine get _engine {
    if (_rtcEngine == null) {
      throw GeneralException();
    }

    return _rtcEngine!;
  }

  BehaviorSubject<SalingsapaVideoFrameModel>? _videoFrameController;
  Timer? _videoFrameSendTimer;

  @override
  Future<void> init(String appId) async {
    await _engine.initialize(RtcEngineContext(appId: appId));
  }

  @override
  void setEngine(RtcEngine engine) => _rtcEngine = engine;

  @override
  Future<void> setObserver() async {
    _videoFrameController = BehaviorSubject();
    _videoFrameSendTimer =
        Timer.periodic(const Duration(milliseconds: 300), (timer) {
      if (_videoFrameController?.isClosed ?? false) {
        timer.cancel();
        return;
      }
    });

    // _audioFrameObserver = AudioFrameObserver(
    //     onRecordAudioFrame: (String channelId, AudioFrame audioFrame) {},
    //     onPlaybackAudioFrame: (String channelId, AudioFrame audioFrame) {
    //       // Gets the audio frame for playback
    //       Logger.print(
    //           '[onPlaybackAudioFrame] audioFrame: ${audioFrame.toJson()}');
    //     });

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
      var appDocumentsDir = (await getTemporaryDirectory()).path;
      if (appDocumentsDir.substring(appDocumentsDir.length - 1) == '/') {
        appDocumentsDir =
            appDocumentsDir.substring(0, appDocumentsDir.length - 1);
      }

      try {
        Logger.print('taking photo snapshot started...');
        const uuid = Uuid();
        final filePath = '$appDocumentsDir/${uuid.v1()}.jpg';
        await _engine.takeSnapshot(uid: 0, filePath: filePath);
        Logger.print('take photo snapshot success!');
      } on AgoraRtcException catch (exception) {
        Logger.error(exception, event: 'taking photo snapshot');
      } catch (error) {
        Logger.error(error, event: 'taking photo snapshot');
      }
    });
  }

  @override
  Future<void> removeObserver() async {
    // _engine.getMediaEngine().unregisterAudioFrameObserver(_audioFrameObserver);
    // _engine.getMediaEngine().unregisterVideoFrameObserver(_videoFrameObserver);

    await _videoFrameController?.close();
    _videoFrameSendTimer?.cancel();
  }

  @override
  Stream<SalingsapaVideoFrameModel> get videoFrame =>
      _videoFrameController?.stream ?? const Stream.empty();
}
