import 'package:agora_rtc_engine/agora_rtc_engine.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../blocs/video_call/video_call_bloc.dart';
import '../../../services/theme_service.dart';

class FloatingVideoInterface extends StatelessWidget {
  const FloatingVideoInterface({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VideoCallBloc, VideoCallState>(
      buildWhen: (_, state) => state.maybeMap(
        joinRoomSuccess: (state) => true,
        orElse: () => false,
      ),
      builder: (context, state) {
        return state.maybeMap(
          joinRoomSuccess: (state) {
            if (state.remoteVideoUid == null || state.localVideoUid == null) {
              return const SizedBox();
            }

            return SafeArea(
              child: Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding:
                      const EdgeInsets.all(IntuitiveUiConstant.normalSpace),
                  child: LayoutBuilder(
                    builder: (context, constraints) {
                      final width = constraints.maxWidth / 2.5;
                      return SizedBox(
                        width: width,
                        height: width * 16 / 9,
                        child: ClipRRect(
                          borderRadius: const BorderRadius.all(Radius.circular(
                              IntuitiveUiConstant.normalRadius)),
                          child: AgoraVideoView(
                            controller: VideoViewController(
                              rtcEngine: state.engine,
                              canvas: VideoCanvas(uid: state.localVideoUid),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            );
          },
          orElse: () {
            return const SizedBox();
          },
        );
      },
    );
  }
}
