import 'package:agora_rtc_engine/agora_rtc_engine.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../blocs/video_call/video_call_bloc.dart';
import 'no_video_interface.dart';

class FullscreenVideoInterface extends StatelessWidget {
  const FullscreenVideoInterface({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return SizedBox(
          width: constraints.maxWidth,
          height: constraints.maxHeight,
          child: BlocBuilder<VideoCallBloc, VideoCallState>(
            buildWhen: (_, state) => state.maybeMap(
              initial: (_) => true,
              joinRoomInProgress: (_) => true,
              joinRoomSuccess: (_) => true,
              orElse: () => false,
            ),
            builder: (context, state) {
              return state.maybeMap(
                initial: (_) {
                  return const NoVideoInterface();
                },
                joinRoomInProgress: (_) {
                  return const Center(
                      child: CircularProgressIndicator.adaptive());
                },
                joinRoomSuccess: (state) {
                  if (state.remoteVideoUid != null) {
                    return AgoraVideoView(
                      controller: VideoViewController.remote(
                        rtcEngine: state.engine,
                        canvas: VideoCanvas(uid: state.remoteVideoUid),
                        connection: RtcConnection(channelId: state.room.roomId),
                      ),
                    );
                  }

                  if (state.localVideoUid != null) {
                    return AgoraVideoView(
                      controller: VideoViewController(
                        rtcEngine: state.engine,
                        canvas: const VideoCanvas(uid: 0),
                      ),
                    );
                  }

                  return const NoVideoInterface();
                },
                orElse: () {
                  return const NoVideoInterface();
                },
              );
            },
          ),
        );
      },
    );
  }
}
