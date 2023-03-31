import 'package:agora_rtc_engine/agora_rtc_engine.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:salingsapa/core/utils/logger.dart';
import 'package:salingsapa/domain/entities/contact.dart';
import 'package:salingsapa/domain/entities/video_call_invitation.dart';
import 'package:salingsapa/domain/entities/video_call_status.dart';
import 'package:salingsapa/domain/entities/video_call_user_update_info.dart';
import 'package:salingsapa/domain/usecases/get_video_call_engine.dart';
import 'package:salingsapa/domain/usecases/init_video_call.dart';
import 'package:salingsapa/domain/usecases/join_video_call.dart';
import 'package:salingsapa/domain/usecases/leave_video_call.dart';
import 'package:salingsapa/domain/usecases/start_video_call.dart';
import 'package:salingsapa/domain/usecases/stream_video_call_status.dart';
import 'package:salingsapa/domain/usecases/update_video_call_remote_user_status.dart';

part 'video_call_bloc.freezed.dart';
part 'video_call_event.dart';
part 'video_call_state.dart';

class VideoCallBloc extends Bloc<VideoCallEvent, VideoCallState> {
  VideoCallBloc(
    this._startVideoCall,
    this._joinVideoCall,
    this._leaveVideoCall,
    this._initVideoCall,
    this._getVideoCallEngine,
    this._streamVideoCallStatus,
    this._updateVideoCallRemoteUserStatus,
  ) : super(const VideoCallState.initial()) {
    on<_SetInvitationStarted>(_onSetInvitation);
    on<_VideoCallStarted>(_onStartVideoCall);
    on<_JoinVideoCallStarted>(_onJoinVideoCall);
    on<_LeaveVideoCallStarted>(_onLeaveVideoCall);
    on<_UpdateRemoteUserStarted>(_onUpdateRemoteUserStatus);

    _streamVideoCallStatus().listen((result) {
      if (isClosed) return;
      result.fold(
        (_) => null,
        (status) {
          add(VideoCallEvent.updateRemoteUserStatusStarted(status));
        },
      );
    });
  }

  final InitVideoCall _initVideoCall;
  final StartVideoCall _startVideoCall;
  final JoinVideoCall _joinVideoCall;
  final LeaveVideoCall _leaveVideoCall;
  final GetVideoCallEngine _getVideoCallEngine;
  final StreamVideoCallStatus _streamVideoCallStatus;
  final UpdateVideoCallRemoteUserStatus _updateVideoCallRemoteUserStatus;

  @override
  Future<void> close() async {
    if (state.invitation != null) {
      await _leaveVideoCall(state.invitation!);
    }
    return super.close();
  }

  void _onStartVideoCall(
      _VideoCallStarted event, Emitter<VideoCallState> emit) async {
    emit(VideoCallState.joinChannelInProgress(
        invitation: state.invitation,
        isRemoteUserJoined: state.isRemoteUserJoined,
        localUid: state.localUid,
        remoteUid: state.remoteUid));

    final initVideoCallResult = await _initVideoCall();
    initVideoCallResult.fold(
      (_) => emit(VideoCallState.joinChannelFailure(
          invitation: state.invitation,
          isRemoteUserJoined: state.isRemoteUserJoined,
          localUid: state.localUid,
          remoteUid: state.remoteUid)),
      (_) => null,
    );
    if (initVideoCallResult.isLeft()) return;

    final startVideoCallResult = await _startVideoCall(event.contact);
    final invitation = startVideoCallResult.fold(
      (_) {
        emit(VideoCallState.joinChannelFailure(
            invitation: state.invitation,
            isRemoteUserJoined: state.isRemoteUserJoined,
            localUid: state.localUid,
            remoteUid: state.remoteUid));
        return null;
      },
      (invitation) => invitation,
    );
    if (invitation == null) return;

    final getEngineResult = _getVideoCallEngine();
    final engine = getEngineResult.fold(
      (_) {
        emit(VideoCallState.joinChannelFailure(
            invitation: state.invitation,
            isRemoteUserJoined: state.isRemoteUserJoined,
            localUid: state.localUid,
            remoteUid: state.remoteUid));
        return null;
      },
      (engine) => engine,
    );
    if (engine == null) return;

    emit(VideoCallState.joinChannelSuccess(
        invitation: invitation,
        engine: engine,
        isRemoteUserJoined: state.isRemoteUserJoined,
        localUid: invitation.callerUid,
        remoteUid: state.remoteUid));

    if (state.invitation != null) {
      final updateVideoCallRemoteUserStatusResult =
          await _updateVideoCallRemoteUserStatus(state.invitation!);
    }
  }

  void _onJoinVideoCall(
      _JoinVideoCallStarted event, Emitter<VideoCallState> emit) async {
    emit(VideoCallState.joinChannelInProgress(
        invitation: state.invitation,
        isRemoteUserJoined: state.isRemoteUserJoined,
        localUid: state.localUid,
        remoteUid: state.remoteUid));

    final initVideoCallResult = await _initVideoCall();
    initVideoCallResult.fold(
      (_) => emit(VideoCallState.joinChannelFailure(
          invitation: state.invitation,
          isRemoteUserJoined: state.isRemoteUserJoined,
          localUid: state.localUid,
          remoteUid: state.remoteUid)),
      (_) => null,
    );
    if (initVideoCallResult.isLeft()) return;

    final joinVideoCallResult = await _joinVideoCall(event.invitation);
    final invitation = joinVideoCallResult.fold(
      (_) {
        emit(VideoCallState.joinChannelFailure(
            invitation: state.invitation,
            isRemoteUserJoined: state.isRemoteUserJoined,
            localUid: state.localUid,
            remoteUid: state.remoteUid));
        return null;
      },
      (invitation) => invitation,
    );
    if (invitation == null) return;

    final getEngineResult = _getVideoCallEngine();
    final engine = getEngineResult.fold(
      (_) {
        emit(VideoCallState.joinChannelFailure(
            invitation: state.invitation,
            isRemoteUserJoined: state.isRemoteUserJoined,
            localUid: state.localUid,
            remoteUid: state.remoteUid));
        return null;
      },
      (engine) => engine,
    );
    if (engine == null) return;

    emit(VideoCallState.joinChannelSuccess(
        invitation: invitation,
        engine: engine,
        isRemoteUserJoined: state.isRemoteUserJoined,
        localUid: invitation.targetUid,
        remoteUid: invitation.callerUid));

    if (state.invitation != null) {
      final updateVideoCallRemoteUserStatusResult =
          await _updateVideoCallRemoteUserStatus(state.invitation!);
    }
  }

  void _onLeaveVideoCall(
      _LeaveVideoCallStarted event, Emitter<VideoCallState> emit) async {
    emit(VideoCallState.leaveChannelInProgress(
        invitation: state.invitation,
        isRemoteUserJoined: state.isRemoteUserJoined,
        localUid: state.localUid,
        remoteUid: state.remoteUid));

    final startVideoCallResult = await _leaveVideoCall(event.invitation);
    startVideoCallResult.fold(
      (_) => emit(VideoCallState.leaveChannelFailure(
          invitation: state.invitation,
          isRemoteUserJoined: state.isRemoteUserJoined,
          localUid: state.localUid,
          remoteUid: state.remoteUid)),
      (_) => emit(VideoCallState.leaveChannelSuccess(
          invitation: null,
          localUid: state.localUid,
          remoteUid: state.remoteUid)),
    );
  }

  void _onUpdateRemoteUserStatus(
      _UpdateRemoteUserStarted event, Emitter<VideoCallState> emit) {
    final info = event.info;
    switch (info.status) {
      case VideoCallStatus.remoteUserJoined:
        final getEngineResult = _getVideoCallEngine();
        final engine = getEngineResult.fold(
          (_) {
            emit(VideoCallState.remoteUserJoinFailure(
                invitation: state.invitation,
                localUid: state.localUid,
                remoteUid: state.remoteUid));
            return null;
          },
          (engine) => engine,
        );
        if (engine == null) return;
        state.maybeMap(
          remoteUserJoinSuccess: (_) {},
          orElse: () => emit(VideoCallState.remoteUserJoinSuccess(
              invitation: state.invitation,
              engine: engine,
              localUid: state.localUid,
              remoteUid: info.remoteUid ?? state.remoteUid)),
        );
        break;
      case VideoCallStatus.remoteUserLeave:
        Logger.print('(bloc) Remote user leave');
        state.maybeMap(
          joinChannelSuccess: (previousState) => emit(
              VideoCallState.remoteUserLeaveSuccess(
                  invitation: state.invitation,
                  localUid: state.localUid,
                  remoteUid: state.remoteUid,
                  engine: previousState.engine)),
          remoteUserJoinSuccess: (previousState) => emit(
              VideoCallState.remoteUserLeaveSuccess(
                  invitation: state.invitation,
                  localUid: state.localUid,
                  remoteUid: state.remoteUid,
                  engine: previousState.engine)),
          remoteUserLeaveSuccess: (_) {},
          orElse: () => emit(VideoCallState.remoteUserLeaveSuccess(
              invitation: state.invitation,
              localUid: state.localUid,
              remoteUid: state.remoteUid)),
        );
        break;
      default:
        break;
    }
  }

  void _onSetInvitation(
      _SetInvitationStarted event, Emitter<VideoCallState> emit) {
    final invitation = event.invitation;
    state.maybeMap(
      initial: (initialState) {
        emit(VideoCallState.initial(
          invitation: invitation,
          isRemoteUserJoined: initialState.isRemoteUserJoined,
          localUid: initialState.localUid,
          remoteUid: initialState.remoteUid,
        ));
      },
      orElse: () {},
    );
  }
}
