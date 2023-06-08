import 'package:equatable/equatable.dart';

class Caption extends Equatable {
  final String captionId;
  final String rawData;
  final DateTime createdAt;
  final String userId;

  const Caption({
    required this.captionId,
    required this.rawData,
    required this.createdAt,
    required this.userId,
  });

  @override
  List<Object?> get props => [
        captionId,
        rawData,
        createdAt,
        userId,
      ];
}
