import 'package:equatable/equatable.dart';

class SpeechRecognitionCaptionModel extends Equatable {
  final String id;
  final String data;
  final DateTime createdAt;

  const SpeechRecognitionCaptionModel({
    required this.id,
    required this.data,
    required this.createdAt,
  });

  @override
  List<Object?> get props => [
        id,
        data,
        createdAt,
      ];
}
