import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../domain/entities/caption.dart';

part 'caption_model.g.dart';

@JsonSerializable()
class CaptionModel extends Equatable {
  final String captionId;
  final String rawData;
  final DateTime createdAt;
  final String userId;

  const CaptionModel({
    required this.captionId,
    required this.rawData,
    required this.createdAt,
    required this.userId,
  });

  const CaptionModel.self({
    required this.captionId,
    required this.rawData,
    required this.createdAt,
  }) : userId = '';

  factory CaptionModel.fromJson(Map<String, dynamic> json) =>
      _$CaptionModelFromJson(json);

  factory CaptionModel.fromEntity(Caption caption) => CaptionModel(
        captionId: caption.captionId,
        rawData: caption.rawData,
        createdAt: caption.createdAt,
        userId: caption.userId,
      );

  Map<String, dynamic> toJson() => _$CaptionModelToJson(this);

  @override
  List<Object?> get props => [
        captionId,
        rawData,
        createdAt,
        userId,
      ];
}

extension CaptionModelToEntity on CaptionModel {
  Caption toEntity() {
    return Caption(
      captionId: captionId,
      rawData: rawData,
      createdAt: createdAt,
      userId: userId,
    );
  }

  CaptionModel addUserId(String id) {
    return CaptionModel(
      captionId: captionId,
      rawData: rawData,
      createdAt: createdAt,
      userId: id,
    );
  }

  bool get isSelfCaption => userId.isEmpty;
}
