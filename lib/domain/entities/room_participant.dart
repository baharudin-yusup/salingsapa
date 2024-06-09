import 'user.dart';

class RoomParticipant extends BasicUser {
  final bool isHost;
  final bool isJoined;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  const RoomParticipant({
    required this.isHost,
    required this.isJoined,
    this.createdAt,
    this.updatedAt,
    required super.userId,
    required super.phoneNumber,
    required super.name,
    required super.profilePictureUrl,
  });

  @override
  List<Object?> get props => [
        ...super.props,
        isHost,
        isJoined,
        userId,
        createdAt,
        updatedAt,
      ];
}
