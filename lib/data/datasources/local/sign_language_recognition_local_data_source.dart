import 'dart:async';

import '../../models/tflite_model.dart';

abstract class SignLanguageRecognitionLocalDataSource {
  Future<TfliteModel> getModel();
}

class SignLanguageRecognitionLocalDataSourceImpl
    implements SignLanguageRecognitionLocalDataSource {
  final _rootDirectory = 'assets/sign_language_recognition/';
  final _modelPrefix = '_model.tflite';
  final _labelsPrefix = '_labels.txt';

  final _defaultDataset = 'american_sign_language';

  @override
  Future<TfliteModel> getModel() async {
    return TfliteModel(
      modelPath: _getModelPath(_defaultDataset),
      labelsPath: _getLabelsPath(_defaultDataset),
    );
  }

  String _getModelPath(String dataset) =>
      '$_rootDirectory$dataset$_modelPrefix';

  String _getLabelsPath(String dataset) =>
      '$_rootDirectory$dataset$_labelsPrefix';
}
