import 'dart:async';

import 'package:rxdart/rxdart.dart';
import 'package:speech_to_text/speech_recognition_result.dart';
import 'package:speech_to_text/speech_to_text.dart';
import 'package:uuid/uuid.dart';

import '../../core/errors/exception.dart';
import '../../core/utils/logger.dart';
import '../../domain/entities/recognition_status.dart';
import '../models/speech_recognition_caption_model.dart';

const _tagName = 'SpeechRecognitionPlugin';

abstract class SpeechRecognitionPlugin {
  Future<void> init();

  Future<void> start();

  Future<void> stop();

  Stream<SpeechRecognitionCaptionModel> get result;

  Stream<RecognitionStatus> get status;
}

class SpeechRecognitionPluginImpl implements SpeechRecognitionPlugin {
  final SpeechToText _speechToText;
  final BehaviorSubject<SpeechRecognitionCaptionModel> _resultController;
  final BehaviorSubject<RecognitionStatus> _statusController;
  final Uuid _uuid;
  late String _currentUuid;

  SpeechRecognitionPluginImpl(this._speechToText, this._uuid)
      : _resultController = BehaviorSubject(),
        _statusController = BehaviorSubject();

  @override
  Future<void> init() async {
    final available = await _speechToText.initialize(onStatus: _listenStatus);
    if (!available) {
      throw const FeatureException();
    }

    _currentUuid = _generateUuid();
  }

  @override
  Future<void> start() async {
    if (_speechToText.isNotListening) {
      await _speechToText.listen(
        onResult: _onResult,
        pauseFor: const Duration(seconds: 5),
        listenFor: const Duration(seconds: 30),
        listenOptions: SpeechListenOptions(
          listenMode: ListenMode.dictation,
        ),
      );
    }

    _statusController.sink.add(RecognitionStatus.on);
  }

  @override
  Future<void> stop() async {
    if (_speechToText.isListening) {
      await _speechToText.stop();
    }
    _statusController.sink.add(RecognitionStatus.off);
  }

  @override
  Stream<SpeechRecognitionCaptionModel> get result => _resultController.stream;

  @override
  Stream<RecognitionStatus> get status => _statusController.stream;

  String _generateUuid() {
    return _uuid.v1();
  }

  void _listenStatus(String status) {
    /// * `listening` when speech recognition begins after calling the [listen]
    /// method.
    /// * `notListening` when speech recognition is no longer listening to the
    /// microphone after a timeout, [cancel] or [stop] call.
    /// * `done` when all results have been delivered.
    ///
    switch (status) {
      case 'listening':
        Logger.print('speech status is: $status', name: _tagName);
        break;
      case 'notListening':
        Logger.print('speech status is: $status', name: _tagName);
        break;
      case 'done':
        Logger.print('speech status is: $status', name: _tagName);
        break;
      default:
        Logger.print('speech status is: $status (unknown)', name: _tagName);
        break;
    }
  }

  void _onResult(SpeechRecognitionResult result) {
    final words = result.recognizedWords.trim();
    if (words.isEmpty) {
      Logger.print('recognition result: (empty)', name: _tagName);
      return;
    }

    final isFinal = result.finalResult;
    Logger.print(
      'recognition result (${isFinal ? 'final' : 'not final'}): ${result.recognizedWords}',
      name: _tagName,
    );

    final caption = SpeechRecognitionCaptionModel(
      id: _currentUuid,
      data: result.recognizedWords,
      createdAt: DateTime.now(),
    );

    if (isFinal) {
      _currentUuid = _generateUuid();
    }

    _statusController.sink
        .add(isFinal ? RecognitionStatus.off : RecognitionStatus.listening);
    _resultController.sink.add(caption);
  }
}
