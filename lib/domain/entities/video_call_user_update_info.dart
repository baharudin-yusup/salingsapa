import 'package:equatable/equatable.dart';
import 'package:salingsapa/domain/entities/video_call_status.dart';

class VideoCallUserUpdateInfo extends Equatable {
  final VideoCallStatus? status;
  final int? remoteUid;

  const VideoCallUserUpdateInfo({
    this.status,
    this.remoteUid,
  });

  @override
  List<Object?> get props => [status, remoteUid];
}
