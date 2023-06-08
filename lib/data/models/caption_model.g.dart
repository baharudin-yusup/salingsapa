// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'caption_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CaptionModel _$CaptionModelFromJson(Map<String, dynamic> json) => CaptionModel(
      captionId: json['captionId'] as String,
      rawData: json['rawData'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      userId: json['userId'] as String,
    );

Map<String, dynamic> _$CaptionModelToJson(CaptionModel instance) =>
    <String, dynamic>{
      'captionId': instance.captionId,
      'rawData': instance.rawData,
      'createdAt': instance.createdAt.toIso8601String(),
      'userId': instance.userId,
    };
