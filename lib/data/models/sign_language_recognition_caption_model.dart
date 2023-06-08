import 'package:equatable/equatable.dart';

class SignLanguageRecognitionCaptionModel extends Equatable {
  final String id;
  final String data;
  final DateTime createdAt;

  const SignLanguageRecognitionCaptionModel({
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
