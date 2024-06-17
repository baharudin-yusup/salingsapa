import 'dart:async';
import 'dart:io';

import 'package:rxdart/rxdart.dart';
import 'package:tflite/tflite.dart';
import 'package:uuid/uuid.dart';

import '../../core/utils/logger.dart';
import '../../domain/entities/recognition_status.dart';
import '../models/local/sign_language_recognition_caption_model.dart';
import '../models/local/sign_language_recognition_result_model.dart';
import '../models/local/tflite_model.dart';
import '../models/local/video_frame_model.dart';

abstract class SignLanguageRecognitionPlugin {
  Future<void> init(TfliteModel model);

  Future<String?> analyzeFrame(SalingsapaVideoFrameModel frame);

  Future<void> analyzePhotoSnapshot(PhotoSnapshotModel photoSnapshot);

  Future<void> enable();

  Future<void> disable();

  Future<void> close();

  Future<void> reset();

  Stream<SignLanguageRecognitionCaptionModel> get result;

  Stream<RecognitionStatus> get status;
}

const _tagName = 'SignLanguageRecognitionPlugin';

class SignLanguageRecognitionPluginImpl
    implements SignLanguageRecognitionPlugin {
  final BehaviorSubject<RecognitionStatus> _statusController;
  final BehaviorSubject<SignLanguageRecognitionCaptionModel> _resultController;
  final Uuid _uuid;
  var _word = '';

  Timer? _idleTimer;
  var _idleCounter = 0;

  SignLanguageRecognitionPluginImpl(this._uuid)
      : _statusController = BehaviorSubject(),
        _resultController = BehaviorSubject(),
        _currentId = '';

  var _isEnabled = false;

  SignLanguageRecognitionResultModel? _previousModel;
  SignLanguageRecognitionResultModel? _currentModel;
  var _sameCharacterCounter = 0;
  String _currentId;

  @override
  Future<void> init(TfliteModel model) async {
    try {
      await Tflite.loadModel(
        model: model.modelPath,
        labels: model.labelsPath,
      );

      Logger.print(
        'success initializing plugin',
        name: _tagName,
      );
      _isEnabled = false;
      _currentId = _generateId();
    } catch (error) {
      Logger.error(
        error,
        event: 'initializing plugin',
        name: _tagName,
      );
    }
  }

  @override
  Future<String?> analyzeFrame(SalingsapaVideoFrameModel frame) async {
    if (!_isEnabled) return null;
    Logger.print(
      'video frame:\n'
      'dimension:${frame.width}x${frame.height}\n'
      'y (${frame.y.length}): ${frame.y.take(10).toList().toString()}\n'
      'u (${frame.u.length}): ${frame.u.take(10).toList().toString()}\n'
      'v (${frame.v.length}): ${frame.v.take(10).toList().toString()}',
      name: _tagName,
    );
    List<Map<String, dynamic>> recognitionResults;

    try {
      final r = await Tflite.runModelOnFrame(
        bytesList: frame.toBuffer(),
        imageHeight: frame.height,
        imageWidth: frame.width,
        rotation: 90,
        numResults: 3,
        threshold: 0.7,
        asynch: true,
      );

      if (r == null) {
        Logger.print(
          'recognition result: null',
          name: _tagName,
        );
        return null;
      }
      recognitionResults = r.map((e) => Map<String, dynamic>.from(e)).toList();
    } catch (error) {
      Logger.error(
        error,
        event: 'recognizing frame',
        name: _tagName,
      );
      return null;
    }

    if (recognitionResults.isEmpty) {
      Logger.print(
        'recognition result: empty',
        name: _tagName,
      );
      return null;
    }

    try {
      final models = recognitionResults
          .map((json) => SignLanguageRecognitionResultModel.fromJson(json))
          .toList();

      var str = '';
      for (var model in models) {
        str += 'label: ${model.label}\tconfidence: ${model.confidence}\n';
      }
      Logger.print(
        'recognition result:\n'
        '$str',
        name: _tagName,
      );
    } catch (error) {
      Logger.error(
        error,
        event: 'converting recognition result to model',
        name: _tagName,
      );
    }
    return null;
  }

  @override
  Future<void> disable() async {
    try {
      _isEnabled = false;
      _statusController.sink.add(RecognitionStatus.off);
      Logger.print(
        'disposing camera controller success',
        name: _tagName,
      );
    } catch (error) {
      Logger.error(
        error,
        event: 'disposing camera controller',
        name: _tagName,
      );
    }
  }

  @override
  Future<void> enable() async {
    _isEnabled = true;
    reset();
    Logger.print(
      'enabling feature success',
      name: _tagName,
    );
    _statusController.sink.add(RecognitionStatus.on);
  }

  @override
  Stream<SignLanguageRecognitionCaptionModel> get result =>
      _resultController.stream;

  @override
  Stream<RecognitionStatus> get status => _statusController.stream;

  @override
  Future<void> close() async {
    await Tflite.close();
    _statusController.sink.add(RecognitionStatus.off);
  }

  @override
  Future<void> analyzePhotoSnapshot(PhotoSnapshotModel photoSnapshot) async {
    // Start the recognition
    try {
      await _startRecognition(photoSnapshot);
    } catch (error) {
      Logger.error(
        error,
        event: 'recognizing photo snapshot',
        name: _tagName,
      );
    }

    // After analyzed, delete the temporary photo snapshot
    try {
      await _deletePhotoSnapshot(photoSnapshot);
      Logger.print(
        'delete snapshot success!',
        name: _tagName,
      );
    } catch (error) {
      Logger.error(
        error,
        event: 'deleting photo snapshot',
        name: _tagName,
      );
    }
  }

  Future<void> _startRecognition(PhotoSnapshotModel photoSnapshot) async {
    late List<Map<String, dynamic>>? recognitionResults;

    // Run model, if the result is null then start idle counter
    // if the result is not null then go to the next process
    try {
      final r = await Tflite.runModelOnImage(
        path: photoSnapshot.filePath,
        numResults: 3,
        imageMean: 127.5,
        imageStd: 127.5,
        threshold: 0.75,
        asynch: true,
      );
      recognitionResults = r?.map((e) => Map<String, dynamic>.from(e)).toList();
    } catch (error) {
      Logger.error(
        error,
        event: 'recognizing frame',
        name: _tagName,
      );
      return;
    }

    // if the result is null then start idle counter
    // if the result is not null then go to the next process
    if (recognitionResults == null || recognitionResults.isEmpty) {
      Logger.print(
        'recognition result: empty',
        name: _tagName,
      );
      _increaseIdleCounter();
      return;
    }

    try {
      final models = recognitionResults
          .map((json) => SignLanguageRecognitionResultModel.fromJson(json))
          .toList();

      var bestModel = models[0];
      var str = '';
      for (var model in models) {
        str +=
            'label: ${model.label}\tconfidence: ${model.confidence}\tindex: ${model.index}\n';

        if (model.confidence > bestModel.confidence) {
          bestModel = model;
        }
      }
      Logger.print(
        'recognition result:\n'
        '$str',
        name: _tagName,
      );

      _checkResult(bestModel);
    } catch (error) {
      Logger.error(
        error,
        event: 'converting recognition result to model',
        name: _tagName,
      );
    }
  }

  Future<void> _deletePhotoSnapshot(PhotoSnapshotModel photoSnapshot) async {
    final file = File(photoSnapshot.filePath);
    await file.delete(recursive: true);
  }

  void _checkResult(SignLanguageRecognitionResultModel model) {
    _resetIdleCounter();
    _previousModel = _currentModel;
    _currentModel = model;

    if (_previousModel != null &&
        _currentModel!.label == _previousModel!.label) {
      _sameCharacterCounter++;

      if (_sameCharacterCounter < 4) {
        return;
      }
    } else {
      _sameCharacterCounter = 0;
    }

    if (model.isDeleteLabel && _word.isNotEmpty) {
      _word = _word.substring(0, _word.length - 1);
      final caption = SignLanguageRecognitionCaptionModel(
        id: _currentId,
        data: _word,
        createdAt: DateTime.now(),
      );
      _resultController.sink.add(caption);
    } else if (model.isNothingLabel) {
      return;
    } else if (model.isSpaceLabel && _word.isNotEmpty) {
      final caption = SignLanguageRecognitionCaptionModel(
        id: _currentId,
        data: _word,
        createdAt: DateTime.now(),
      );
      _currentId = _generateId();
      _resultController.sink.add(caption);
    } else {
      _word = '$_word${model.label}'.toLowerCase();
      final caption = SignLanguageRecognitionCaptionModel(
        id: _currentId,
        data: _word,
        createdAt: DateTime.now(),
      );
      _resultController.sink.add(caption);
    }
  }

  @override
  Future<void> reset() async {
    _previousModel = null;
    _currentModel = null;
    _sameCharacterCounter = 0;
    _word = '';
    _currentId = _generateId();
  }

  String _generateId() => _uuid.v1();

  void _resetIdleCounter() {
    _idleTimer = null;
    _idleCounter = 0;
  }

  void _increaseIdleCounter() {
    _idleTimer ??= _startIdleTimer();
    _idleCounter++;
  }

  Timer _startIdleTimer() {
    return Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_idleCounter > 4) {
        _idleCounter = 0;
        _doIdle();
        timer.cancel();
      }
    });
  }

  void _doIdle() {
    _statusController.sink.add(RecognitionStatus.idle);
  }
}

// class SignLanguageRecognitionPluginImpl
//     implements SignLanguageRecognitionPlugin {
//   final BehaviorSubject<RecognitionStatus> _statusController;
//
//   var _word = '';
//   CameraController? _cameraController;
//   List<CameraDescription>? _cameras;
//
//   SignLanguageRecognitionPluginImpl() : _statusController = BehaviorSubject();
//
//   @override
//   Future<void> init(TfliteModel model) async {
//     try {
//       // await Tflite.loadModel(
//       //   model: modelFilePath,
//       //   labels: labelsFilePath,
//       // );
//       _cameras = await availableCameras();
//
//       Logger.print(
//         'success initializing plugin',
//         name: _tagName,
//       );
//     } catch (error) {
//       Logger.error(
//         error,
//         event: 'initializing plugin',
//         name: _tagName,
//       );
//     }
//   }
//
//   @override
//   Future<String?> analyzeFrame(SalingsapaVideoFrameModel frame) async {
//     // await Tflite.runModelOnFrame(
//     //   bytesList: cameraImage!.planes.map(
//     //     (plane) {
//     //       return plane.bytes;
//     //     },
//     //   ).toList(),
//     //   imageHeight: cameraImage!.height,
//     //   imageWidth: cameraImage!.width,
//     //   imageMean: 127.5,
//     //   imageStd: 127.5,
//     //   rotation: 90,
//     //   numResults: 3,
//     //   threshold: 0.1,
//     //   asynch: true,
//     // );
//     // final result = await _dummyAnalyzeFrame(frame);
//     // if (result != null) {
//     //   _word += result;
//     // }
//     // return result;
//
//     return null;
//   }
//
//   Future<String?> _dummyAnalyzeFrame(SalingsapaVideoFrameModel frame) async {
//     final time = DateTime.now();
//
//     if (_word.length > 10) {
//       return ' ';
//     }
//
//     if (time.millisecond < 40 && time.second % 1 == 0) {
//       await Future.delayed(const Duration(milliseconds: 12));
//       return '4';
//     }
//
//     if (time.second % 3 == 0) {
//       await Future.delayed(const Duration(milliseconds: 27));
//       return '3';
//     }
//
//     if (time.second > 10 && time.millisecond > 23) {
//       await Future.delayed(const Duration(milliseconds: 50));
//       return '2';
//     }
//
//     if (time.second >= 15 && time.millisecond < 67) {
//       await Future.delayed(const Duration(milliseconds: 77));
//       return '5';
//     }
//
//     if (time.second % 5 == 0) {
//       return null;
//     }
//
//     await Future.delayed(const Duration(milliseconds: 80));
//     return ' ';
//   }
//
//   @override
//   Future<void> disable() async {
//     try {
//       await _cameraController?.stopImageStream();
//       _statusController.sink.add(RecognitionStatus.off);
//       Logger.print(
//         'disposing camera controller success',
//         name: _tagName,
//       );
//     } catch (error) {
//       Logger.error(
//         error,
//         event: 'disposing camera controller',
//         name: _tagName,
//       );
//     }
//     // try {
//     //   await _cameraController?.dispose();
//     //   _statusController.sink.add(RecognitionStatus.off);
//     //   Logger.print(
//     //     'disposing camera controller success',
//     //     name: _tagName,
//     //   );
//     // } catch (error) {
//     //   Logger.error(
//     //     error,
//     //     event: 'disposing camera controller',
//     //     name: _tagName,
//     //   );
//     // }
//   }
//
//   @override
//   Future<void> enable() async {
//     final cameras = _cameras;
//     if (cameras == null) {
//       throw FeatureException();
//     }
//
//     final camera = cameras.firstWhere(
//       (element) => element.lensDirection == CameraLensDirection.front,
//     );
//
//     _cameraController = CameraController(
//       camera,
//       ResolutionPreset.medium,
//     );
//     await _cameraController?.initialize();
//     _cameraController?.startImageStream(
//       _analyzeVideoFrame,
//     );
//
//     Logger.print(
//       'enabling feature success',
//       name: _tagName,
//     );
//     _statusController.sink.add(RecognitionStatus.on);
//   }
//
//   void _analyzeVideoFrame(CameraImage image) async {
//     Logger.print(
//       'stream result:\n'
//       'dimension: ${image.width}x${image.height}\n'
//       'format: ${image.format.group.name}\n'
//       'total planes: ${image.planes.length}',
//       name: _tagName,
//     );
//
//     var planeStr = '';
//     for (var i = 0; i < image.planes.length; i++) {
//       final length = image.planes[i].bytes.length;
//       final plane = image.planes[i].bytes.take(4).map((e) => e.toString());
//       planeStr +=
//           '[$i] ($length) => ${plane.reduce((value, element) => '$value, $element')}\n';
//     }
//     Logger.print(
//       'planes:\n'
//       '$planeStr',
//       name: _tagName,
//     );
//   }
//
//   @override
//   Stream<String> get result => throw UnimplementedError();
//
//   @override
//   Stream<RecognitionStatus> get status => _statusController.stream;
//
//   @override
//   Future<void> close() async {
//     await _cameraController?.dispose();
//   }
// }
