part of 'video_call_bloc.dart';

@freezed
class VideoCallEvent with _$VideoCallEvent {
  const factory VideoCallEvent.videoCallStarted(Contact contact) =
      _VideoCallStarted;

  const factory VideoCallEvent.setInvitationStarted(
      VideoCallInvitation invitation) = _SetInvitationStarted;

  const factory VideoCallEvent.joinVideoCallStarted(
      VideoCallInvitation invitation) = _JoinVideoCallStarted;

  const factory VideoCallEvent.leaveVideoCallStarted(
      VideoCallInvitation invitation) = _LeaveVideoCallStarted;

  const factory VideoCallEvent.updateRemoteUserStatusStarted(
      VideoCallUserUpdateInfo info) = _UpdateRemoteUserStarted;
}
