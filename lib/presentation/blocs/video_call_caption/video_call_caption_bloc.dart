import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/errors/failures.dart';
import '../../../core/utils/logger.dart';
import '../../../domain/entities/caption.dart';
import '../../../domain/entities/room.dart';
import '../../../domain/usecases/disable_caption.dart';
import '../../../domain/usecases/enable_caption.dart';
import '../../../domain/usecases/init_caption.dart';
import '../../../domain/usecases/stream_caption.dart';
import '../../../domain/usecases/upload_caption.dart';

part 'video_call_caption_bloc.freezed.dart';
part 'video_call_caption_event.dart';
part 'video_call_caption_state.dart';

const _tagName = 'VideoCallCaptionBloc';

class VideoCallCaptionBloc
    extends Bloc<VideoCallCaptionEvent, VideoCallCaptionState> {
  final InitCaption _initCaption;
  final EnableCaption _enableCaption;
  final DisableCaption _disableCaption;
  final StreamCaption _streamCaption;
  final UploadCaption _uploadCaption;

  StreamSubscription<Either<Failure, List<Caption>>>? _streamSubscription;
  Timer? _updateRemoteCaptionTimer;
  Timer? _updateLocalCaptionTimer;

  VideoCallCaptionBloc(
    this._initCaption,
    this._enableCaption,
    this._disableCaption,
    this._streamCaption,
    this._uploadCaption,
  ) : super(const VideoCallCaptionState.initial()) {
    on<_Started>(_startInitCaption);
    on<_ToggleFeatureStarted>(_startToggleFeature);
    on<_UpdateRemoteCaptionStarted>(_startUpdateCaptions);
    on<_UploadCaptionStarted>(_startUploadCaption);
    on<_LocalCaptionReceived>(_startUpdateLocalCaptions);
  }

  @override
  Future<void> close() async {
    await _streamSubscription?.cancel();
    _updateRemoteCaptionTimer?.cancel();
    _updateLocalCaptionTimer?.cancel();
    return await super.close();
  }

  void _startInitCaption(
      _Started event, Emitter<VideoCallCaptionState> emit) async {
    await _initCaption(event.room);
  }

  void _startToggleFeature(
      _ToggleFeatureStarted event, Emitter<VideoCallCaptionState> emit) async {
    if (state.isEnabled) {
      final disableCaptionResult = await _disableCaption();
      disableCaptionResult.fold(
        (failure) => emit(state.toToggleFeatureFailure(failure)),
        (_) {
          _streamSubscription = null;
          emit(state.toInitial(isEnabled: false));
        },
      );
    } else {
      final enableCaptionResult = await _enableCaption();
      enableCaptionResult.fold(
        (failure) => emit(state.toToggleFeatureFailure(failure)),
        (_) => emit(state.toInitial(isEnabled: true)),
      );
      if (enableCaptionResult.isLeft()) return;

      _streamSubscription = _streamCaption().listen((captionResult) {
        captionResult.fold(
          (failure) => add(VideoCallCaptionEvent.updateRemoteCaptionStarted(
              failure: failure)),
          (captions) => add(VideoCallCaptionEvent.updateRemoteCaptionStarted(
              captions: captions)),
        );
      });
    }
  }

  void _startUpdateCaptions(_UpdateRemoteCaptionStarted event,
      Emitter<VideoCallCaptionState> emit) async {
    if (event.failure != null) {
      emit(state.toUpdateRemoteCaptionFailure(event.failure!));
      return;
    }

    if (event.captions.isEmpty) {
      emit(state.copyWith(remoteCaptions: null));
      return;
    }

    final validCaptions = event.captions
        .where((caption) => caption.createdAt
            .isAfter(DateTime.now().subtract(const Duration(seconds: 10))))
        .map((e) => e.rawData);
    var combinedCaption = '';

    if (validCaptions.isNotEmpty) {
      combinedCaption =
          validCaptions.reduce((value, element) => '$value $element').trim();
    }

    emit(state.copyWith(remoteCaptions: combinedCaption));

    if (_updateRemoteCaptionTimer != null) {
      Logger.print('remove previous delete caption timer');
      _updateRemoteCaptionTimer?.cancel();
    }
    Logger.print('start new delete caption timer for 15 seconds');
    _updateRemoteCaptionTimer = Timer(const Duration(seconds: 15), () {
      if (isClosed) return;
      Logger.print('clear all caption because no new data');
      add(const VideoCallCaptionEvent.updateRemoteCaptionStarted(captions: []));
    });
  }

  void _startUpdateLocalCaptions(
      _LocalCaptionReceived event, Emitter<VideoCallCaptionState> emit) async {
    final newCaption = event.caption;
    if (newCaption == null) {
      emit(state.copyWith(localCaptions: []));
      return;
    }
    var captions = List<Caption>.from(state.localCaptions);
    final currentCaptionIndex = captions
        .indexWhere((caption) => caption.captionId == newCaption.captionId);

    Logger.print(
      'local caption received (${currentCaptionIndex < 0 ? 'new data' : 'update data'}): "${newCaption.rawData}"',
      name: _tagName,
    );

    if (currentCaptionIndex < 0) {
      captions.add(newCaption);
    } else {
      captions[currentCaptionIndex] = newCaption;
    }

    emit(state.copyWith(localCaptions: captions));
  }

  void _startUploadCaption(
      _UploadCaptionStarted event, Emitter<VideoCallCaptionState> emit) async {
    Logger.print(
      'upload caption started...',
      name: _tagName,
    );
    final uploadCaptionResult = await _uploadCaption(event.caption);
    uploadCaptionResult.fold(
      (failure) => emit(state.toUploadCaptionFailure(failure)),
      (_) {
        var captions = List<Caption>.from(state.localCaptions);
        final currentCaptionIndex = captions.indexWhere(
            (caption) => caption.captionId == event.caption.captionId);

        if (currentCaptionIndex < 0) {
          captions.add(event.caption);
        } else {
          captions[currentCaptionIndex] = event.caption;
        }

        emit(state.copyWith(localCaptions: captions));
      },
    );

    if (_updateLocalCaptionTimer != null) {
      Logger.print('remove previous delete caption timer');
      _updateLocalCaptionTimer?.cancel();
    }
    Logger.print('start new delete caption timer for 15 seconds');
    _updateLocalCaptionTimer = Timer(const Duration(seconds: 15), () {
      if (isClosed) return;
      Logger.print('clear all caption because no new data');
      add(const VideoCallCaptionEvent.localCaptionReceived());
    });
  }
}
