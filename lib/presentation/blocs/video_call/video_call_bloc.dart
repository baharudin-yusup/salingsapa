import 'dart:async';

import 'package:agora_rtc_engine/agora_rtc_engine.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/errors/failures.dart';
import '../../../core/utils/logger.dart';
import '../../../domain/entities/room.dart';
import '../../../domain/entities/video_call_status.dart';
import '../../../domain/entities/video_call_user_update_info.dart';
import '../../../domain/usecases/disable_take_photo_snapshot.dart';
import '../../../domain/usecases/enable_take_photo_snapshot.dart';
import '../../../domain/usecases/init_video_call.dart';
import '../../../domain/usecases/join_room.dart';
import '../../../domain/usecases/leave_room.dart';
import '../../../domain/usecases/stream_video_call_status.dart';

part 'video_call_bloc.freezed.dart';
part 'video_call_event.dart';
part 'video_call_state.dart';

class VideoCallBloc extends Bloc<VideoCallEvent, VideoCallState> {
  VideoCallBloc(
    this._joinRoom,
    this._leaveRoom,
    this._initVideoEngine,
    this._streamVideoCallStatus,
    this._enableTakePhotoSnapshot,
    this._disableTakePhotoSnapshot, {
    required Room room,
  }) : super(VideoCallState.initial(room)) {
    on<_EngineStarted>(_onStartVideoEngine);
    on<_JoinRoomStarted>(_onStartJoinRoom);
    on<_JoinRoomFailed>(_onFailJoinRoom);
    on<_LeaveRoomStarted>(_onStartLeaveRoom);
    on<_UpdateUserStatusStarted>(_onUpdateUserStatus);
    on<_TakePhotoSnapshotFeatureStatusChanged>(_onStartToggleTakePhotoFeature);
    on<_DisableTakePhotoSnapshotStarted>(_onStartDisableTakePhotoSnapshot);
    on<_EnableTakePhotoSnapshotStarted>(_onStartEnableTakePhotoSnapshot);

    _streamVideoCallStatus().listen((result) {
      if (isClosed) return;
      result.fold(
        (_) => null,
        (status) {
          add(VideoCallEvent.updateUserStatusStarted(status));
        },
      );
    });

    add(const VideoCallEvent.engineStarted());
  }

  final InitVideoEngine _initVideoEngine;
  final JoinRoom _joinRoom;
  final LeaveRoom _leaveRoom;
  final StreamVideoCallStatus _streamVideoCallStatus;

  final EnableTakePhotoSnapshot _enableTakePhotoSnapshot;
  final DisableTakePhotoSnapshot _disableTakePhotoSnapshot;

  Timer? _joinRoomTimeoutControl;

  @override
  Future<void> close() async {
    _joinRoomTimeoutControl?.cancel();
    await _leaveRoom(state.room);
    return super.close();
  }

  void _onStartVideoEngine(
      _EngineStarted event, Emitter<VideoCallState> emit) async {
    emit(VideoCallState.initEngineInProgress(state.room));

    final initVideoCallResult = await _initVideoEngine();
    initVideoCallResult.fold(
      (failure) {
        state.maybeWhen(
          initEngineInProgress: (room) {
            emit(VideoCallState.initEngineFailure(room, failure));
          },
          orElse: () {},
        );
      },
      (engine) {
        emit(VideoCallState.initEngineSuccess(state.room, engine));
        add(const VideoCallEvent.joinRoomStarted());
      },
    );
  }

  void _onStartJoinRoom(
      _JoinRoomStarted event, Emitter<VideoCallState> emit) async {
    final isInitialConditionValid = state.maybeWhen(
      initEngineSuccess: (room, engine) {
        emit(VideoCallState.joinRoomInProgress(room, engine));
        return true;
      },
      orElse: () {
        return false;
      },
    );

    if (!isInitialConditionValid) {
      emit(
          VideoCallState.initEngineFailure(state.room, const FeatureFailure()));
      return;
    }

    final joinVideoCallResult = await _joinRoom(state.room);
    joinVideoCallResult.fold(
      (failure) {
        Logger.error(failure, event: 'joining room');
        state.maybeWhen(
          initEngineSuccess: (room, engine) {
            emit(VideoCallState.joinRoomFailure(room, engine, failure));
          },
          joinRoomInProgress: (room, engine) {
            emit(VideoCallState.joinRoomFailure(room, engine, failure));
          },
          orElse: () {},
        );
      },
      (_) {
        _joinRoomTimeoutControl = Timer(
          const Duration(seconds: 10),
          () {
            if (isClosed) return;
            add(const VideoCallEvent.joinRoomFailed());
          },
        );
      },
    );
  }

  void _onFailJoinRoom(
      _JoinRoomFailed event, Emitter<VideoCallState> emit) async {
    state.maybeWhen(
      joinRoomInProgress: (room, engine) {
        emit(
          VideoCallState.joinRoomFailure(
            room,
            engine,
            const UnknownFailure(),
          ),
        );
      },
      orElse: () {},
    );
  }

  void _onStartLeaveRoom(
      _LeaveRoomStarted event, Emitter<VideoCallState> emit) async {
    final isPreConditionValid = state.when(
      initial: (room) {
        emit(VideoCallState.leaveRoomInProgress(room: room));
        return true;
      },
      initEngineInProgress: (room) {
        emit(VideoCallState.leaveRoomInProgress(room: room));
        return true;
      },
      initEngineSuccess: (room, engine) {
        emit(VideoCallState.leaveRoomInProgress(room: room, engine: engine));
        return true;
      },
      initEngineFailure: (room, failure) {
        emit(VideoCallState.leaveRoomInProgress(room: room));
        return true;
      },
      joinRoomInProgress: (room, engine) {
        emit(VideoCallState.leaveRoomInProgress(room: room, engine: engine));
        return true;
      },
      joinRoomSuccess:
          (room, engine, remoteUserStatus, isTakePhotoEnabled, _, __) {
        emit(VideoCallState.leaveRoomInProgress(room: room, engine: engine));
        return true;
      },
      joinRoomFailure: (room, engine, failure) {
        emit(VideoCallState.leaveRoomInProgress(room: room, engine: engine));
        return true;
      },
      leaveRoomInProgress: (room, engine) {
        return false;
      },
      leaveRoomFailure: (room, _) {
        emit(VideoCallState.leaveRoomInProgress(room: room));
        return true;
      },
      leaveRoomSuccess: (room, engine) {
        return false;
      },
    );

    if (!isPreConditionValid) {
      return;
    }

    final startVideoCallResult = await _leaveRoom(state.room);
    startVideoCallResult.fold(
      (failure) {
        state.maybeWhen(
          leaveRoomInProgress: (room, engine) {
            emit(VideoCallState.leaveRoomFailure(room: room, failure: failure));
          },
          orElse: () {},
        );
      },
      (_) {
        emit(VideoCallState.leaveRoomSuccess(room: state.room));
      },
    );
  }

  void _onUpdateUserStatus(
      _UpdateUserStatusStarted event, Emitter<VideoCallState> emit) {
    final info = event.info;

    Logger.print(
        'Update user status (${info.runtimeType} ${info.status}), current state: ${state.runtimeType}');

    switch (info.status) {
      case VideoCallStatus.joined:
        _joinRoomTimeoutControl?.cancel();

        if (info is VideoCallLocalUserUpdateInfo) {
          state.maybeWhen(
            joinRoomInProgress: (room, engine) {
              emit(VideoCallState.joinRoomSuccess(
                room: room,
                engine: engine,
                localVideoUid: info.uid,
              ));
            },
            orElse: () {},
          );
        }

        if (info is VideoCallRemoteUserUpdateInfo) {
          state.maybeMap(
            joinRoomSuccess: (state) {
              emit(state.copyWith(remoteVideoUid: info.uid));
            },
            orElse: () {},
          );
        }
        break;
      case VideoCallStatus.leave:
        if (info is VideoCallRemoteUserUpdateInfo) {
          state.maybeMap(
            joinRoomSuccess: (state) {
              emit(state.copyWith(remoteVideoUid: null));
              add(const VideoCallEvent.leaveRoomStarted());
            },
            orElse: () {},
          );
        }
        break;
      default:
        break;
    }
  }

  void _onStartToggleTakePhotoFeature(
      _TakePhotoSnapshotFeatureStatusChanged event,
      Emitter<VideoCallState> emit) async {
    state.maybeMap(
      joinRoomSuccess: (state) {
        if (event.isEnabled == state.isTakePhotoEnabled) return;
        if (state.isTakePhotoEnabled) {
          add(const VideoCallEvent.disableTakePhotoSnapshotStarted());
        } else {
          add(const VideoCallEvent.disableTakePhotoSnapshotStarted());
        }
      },
      orElse: () {},
    );
  }

  void _onStartDisableTakePhotoSnapshot(_DisableTakePhotoSnapshotStarted event,
      Emitter<VideoCallState> emit) async {
    final disableTakePhotoSnapshotResult = await _disableTakePhotoSnapshot();

    disableTakePhotoSnapshotResult.fold(
      (failure) {
        state.maybeMap(
          joinRoomSuccess: (state) {
            emit(state.copyWith(failure: failure));
          },
          orElse: () {},
        );
      },
      (_) {
        state.maybeMap(
          joinRoomSuccess: (state) {
            emit(state.copyWith(isTakePhotoEnabled: false));
          },
          orElse: () {},
        );
      },
    );
  }

  void _onStartEnableTakePhotoSnapshot(_EnableTakePhotoSnapshotStarted event,
      Emitter<VideoCallState> emit) async {
    final enableTakePhotoSnapshotResult = await _enableTakePhotoSnapshot();

    enableTakePhotoSnapshotResult.fold(
      (failure) {
        state.maybeMap(
          joinRoomSuccess: (state) {
            emit(state.copyWith(failure: failure));
          },
          orElse: () {},
        );
      },
      (_) {
        state.maybeMap(
          joinRoomSuccess: (state) {
            emit(state.copyWith(isTakePhotoEnabled: true));
          },
          orElse: () {},
        );
      },
    );
  }
}
