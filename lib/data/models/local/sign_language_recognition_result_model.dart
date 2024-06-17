import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'sign_language_recognition_result_model.g.dart';

@JsonSerializable()
class SignLanguageRecognitionResultModel extends Equatable {
  final double confidence;
  final int index;
  final String label;

  const SignLanguageRecognitionResultModel(
      this.confidence, this.index, this.label);

  factory SignLanguageRecognitionResultModel.fromJson(
          Map<String, dynamic> json) =>
      _$SignLanguageRecognitionResultModelFromJson(json);

  Map<String, dynamic> toJson() =>
      _$SignLanguageRecognitionResultModelToJson(this);

  @override
  List<Object?> get props => [
        confidence,
        index,
        label,
      ];

  bool get isDeleteLabel => label == 'Delete';
  bool get isNothingLabel => label == 'Nothing';
  bool get isSpaceLabel => label == 'Space';
}
