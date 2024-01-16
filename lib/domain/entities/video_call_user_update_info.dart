import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

import 'video_call_status.dart';

abstract class VideoCallUserUpdateInfo extends Equatable {
  final VideoCallStatus? status;

  const VideoCallUserUpdateInfo({
    this.status,
  });

  @mustCallSuper
  @override
  List<Object?> get props => [status];
}

class VideoCallLocalUserUpdateInfo extends VideoCallUserUpdateInfo {
  final int? uid;

  const VideoCallLocalUserUpdateInfo({super.status, required this.uid});

  @override
  List<Object?> get props => [
        ...super.props,
        uid,
      ];
}

class VideoCallRemoteUserUpdateInfo extends VideoCallUserUpdateInfo {
  final int? uid;

  const VideoCallRemoteUserUpdateInfo({super.status, required this.uid});

  @override
  List<Object?> get props => [
        ...super.props,
        uid,
      ];
}
