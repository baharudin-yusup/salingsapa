// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_language_recognition_result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignLanguageRecognitionResultModel _$SignLanguageRecognitionResultModelFromJson(
        Map<String, dynamic> json) =>
    SignLanguageRecognitionResultModel(
      (json['confidence'] as num).toDouble(),
      json['index'] as int,
      json['label'] as String,
    );

Map<String, dynamic> _$SignLanguageRecognitionResultModelToJson(
        SignLanguageRecognitionResultModel instance) =>
    <String, dynamic>{
      'confidence': instance.confidence,
      'index': instance.index,
      'label': instance.label,
    };
