import 'package:dartz/dartz.dart';
import 'package:salingsapa/core/errors/failures.dart';
import 'package:salingsapa/core/interfaces/use_case.dart';
import 'package:salingsapa/domain/entities/video_call_invitation.dart';
import 'package:salingsapa/domain/repositories/video_call_repository.dart';

class UpdateVideoCallRemoteUserStatus
    extends UseCase<VideoCallInvitation, Unit> {
  final VideoCallRepository _repository;

  const UpdateVideoCallRemoteUserStatus(this._repository);

  @override
  Future<Either<Failure, Unit>> call(VideoCallInvitation param) async {
    return await _repository.updateRemoteUserStatus(invitation: param);
  }
}
