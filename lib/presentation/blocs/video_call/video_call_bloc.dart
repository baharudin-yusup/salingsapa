import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'video_call_event.dart';
part 'video_call_state.dart';
part 'video_call_bloc.freezed.dart';

class VideoCallBloc extends Bloc<VideoCallEvent, VideoCallState> {
  VideoCallBloc() : super(const VideoCallState.initial()) {
    on<VideoCallEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
