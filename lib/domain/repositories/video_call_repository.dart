import 'package:dartz/dartz.dart';
import 'package:salingsapa/core/interfaces/return_type.dart';
import 'package:salingsapa/domain/entities/video_call.dart';

abstract class VideoCallRepository {
  Future<RepoResponse<Unit>> init();

  Future<RepoResponse<Unit>> start({required String channelName});

  Future<RepoResponse<Unit>> join({required VideoCall videoCall});

  Future<RepoResponse<Unit>> leave();

  Stream get videoCallStatus;
}
