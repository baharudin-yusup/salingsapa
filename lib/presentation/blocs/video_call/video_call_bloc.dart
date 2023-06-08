import 'package:agora_rtc_engine/agora_rtc_engine.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/utils/logger.dart';
import '../../../domain/entities/contact.dart';
import '../../../domain/entities/video_call_invitation.dart';
import '../../../domain/entities/video_call_status.dart';
import '../../../domain/entities/video_call_user_update_info.dart';
import '../../../domain/usecases/disable_take_photo_snapshot.dart';
import '../../../domain/usecases/enable_take_photo_snapshot.dart';
import '../../../domain/usecases/get_video_call_engine.dart';
import '../../../domain/usecases/init_video_call.dart';
import '../../../domain/usecases/join_video_call.dart';
import '../../../domain/usecases/leave_video_call.dart';
import '../../../domain/usecases/start_video_call.dart';
import '../../../domain/usecases/stream_video_call_status.dart';
import '../../../domain/usecases/update_video_call_remote_user_status.dart';
import '../../utils/toggle_usecase.dart';

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
    this._enableTakePhotoSnapshot,
    this._disableTakePhotoSnapshot,
  ) : super(const VideoCallState.initial()) {
    on<_SetInvitationStarted>(_onSetInvitation);
    on<_VideoCallStarted>(_onStartVideoCall);
    on<_JoinVideoCallStarted>(_onJoinVideoCall);
    on<_LeaveVideoCallStarted>(_onLeaveVideoCall);
    on<_UpdateRemoteUserStarted>(_onUpdateRemoteUserStatus);
    on<_TakePhotoSnapshotFeatureStatusChanged>(_toggleTakePhotoFeature);

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

  final EnableTakePhotoSnapshot _enableTakePhotoSnapshot;
  final DisableTakePhotoSnapshot _disableTakePhotoSnapshot;

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
        isTakePhotoEnabled: state.isTakePhotoEnabled,
        localUid: state.localUid,
        remoteUid: state.remoteUid));

    final initVideoCallResult = await _initVideoCall();
    initVideoCallResult.fold(
      (_) => emit(VideoCallState.joinChannelFailure(
          invitation: state.invitation,
          isRemoteUserJoined: state.isRemoteUserJoined,
          isTakePhotoEnabled: state.isTakePhotoEnabled,
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
            isTakePhotoEnabled: state.isTakePhotoEnabled,
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
            isTakePhotoEnabled: state.isTakePhotoEnabled,
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
        isTakePhotoEnabled: state.isTakePhotoEnabled,
        localUid: invitation.callerUid,
        remoteUid: state.remoteUid));

    if (state.invitation != null) {
      await _updateVideoCallRemoteUserStatus(state.invitation!);
    }
  }

  void _onJoinVideoCall(
      _JoinVideoCallStarted event, Emitter<VideoCallState> emit) async {
    emit(VideoCallState.joinChannelInProgress(
        invitation: state.invitation,
        isRemoteUserJoined: state.isRemoteUserJoined,
        isTakePhotoEnabled: state.isTakePhotoEnabled,
        localUid: state.localUid,
        remoteUid: state.remoteUid));

    final initVideoCallResult = await _initVideoCall();
    initVideoCallResult.fold(
      (_) => emit(VideoCallState.joinChannelFailure(
          invitation: state.invitation,
          isRemoteUserJoined: state.isRemoteUserJoined,
          isTakePhotoEnabled: state.isTakePhotoEnabled,
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
            isTakePhotoEnabled: state.isTakePhotoEnabled,
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
            isTakePhotoEnabled: state.isTakePhotoEnabled,
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
        isTakePhotoEnabled: state.isTakePhotoEnabled,
        localUid: invitation.targetUid,
        remoteUid: invitation.callerUid));

    if (state.invitation != null) {
      await _updateVideoCallRemoteUserStatus(state.invitation!);
    }
  }

  void _onLeaveVideoCall(
      _LeaveVideoCallStarted event, Emitter<VideoCallState> emit) async {
    emit(VideoCallState.leaveChannelInProgress(
        invitation: state.invitation,
        isRemoteUserJoined: state.isRemoteUserJoined,
        isTakePhotoEnabled: state.isTakePhotoEnabled,
        localUid: state.localUid,
        remoteUid: state.remoteUid));

    final startVideoCallResult = await _leaveVideoCall(event.invitation);
    startVideoCallResult.fold(
      (_) => emit(VideoCallState.leaveChannelFailure(
          invitation: state.invitation,
          isRemoteUserJoined: state.isRemoteUserJoined,
          isTakePhotoEnabled: state.isTakePhotoEnabled,
          localUid: state.localUid,
          remoteUid: state.remoteUid)),
      (_) => emit(VideoCallState.leaveChannelSuccess(
          isTakePhotoEnabled: state.isTakePhotoEnabled,
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
                isTakePhotoEnabled: state.isTakePhotoEnabled,
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
              isTakePhotoEnabled: state.isTakePhotoEnabled,
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
                  isTakePhotoEnabled: state.isTakePhotoEnabled,
                  invitation: state.invitation,
                  localUid: state.localUid,
                  remoteUid: state.remoteUid,
                  engine: previousState.engine)),
          remoteUserJoinSuccess: (previousState) => emit(
              VideoCallState.remoteUserLeaveSuccess(
                  isTakePhotoEnabled: state.isTakePhotoEnabled,
                  invitation: state.invitation,
                  localUid: state.localUid,
                  remoteUid: state.remoteUid,
                  engine: previousState.engine)),
          remoteUserLeaveSuccess: (_) {},
          orElse: () => emit(VideoCallState.remoteUserLeaveSuccess(
              isTakePhotoEnabled: state.isTakePhotoEnabled,
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

  void _toggleTakePhotoFeature(_TakePhotoSnapshotFeatureStatusChanged event,
      Emitter<VideoCallState> emit) async {
    final isNeedToEnable = event.isEnabled;
    if (isNeedToEnable == state.isTakePhotoEnabled) return;

    await toggleUseCase(
      isNeedToEnable ? _enableTakePhotoSnapshot : _disableTakePhotoSnapshot,
      onSuccess: (_) {
        emit(state.copyWith(isTakePhotoEnabled: isNeedToEnable));
      },
    );
  }
}
