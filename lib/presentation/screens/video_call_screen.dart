import 'package:agora_rtc_engine/agora_rtc_engine.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salingsapa/presentation/blocs/video_call/video_call_bloc.dart';
import 'package:salingsapa/presentation/blocs/video_call_control/video_call_control_bloc.dart';
import 'package:salingsapa/presentation/components/intuitive_circle_icon_button.dart';
import 'package:salingsapa/presentation/components/intuitive_scaffold.dart';
import 'package:salingsapa/presentation/services/theme_service.dart';

import '../../core/utils/logger.dart';

class VideoCallScreen extends StatelessWidget {
  static const routeName = '/video-call';

  const VideoCallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntuitiveScaffold(
      child: buildBody(),
    );
  }

  Widget buildBody() {
    return Stack(
      children: [
        showFullScreenVideo(),
        showFloatingVideo(),
        showVideoCallConfigurationButtons(),
      ],
    );
  }

  Widget showFullScreenVideo() {
    return LayoutBuilder(builder: (context, constraints) {
      return SizedBox(
        width: constraints.maxWidth,
        height: constraints.maxHeight,
        child: BlocBuilder<VideoCallBloc, VideoCallState>(
            buildWhen: (_, state) => state.maybeMap(
                  initial: (_) => true,
                  joinChannelSuccess: (_) => true,
                  joinChannelFailure: (_) => true,
                  leaveChannelSuccess: (_) => true,
                  remoteUserJoinSuccess: (_) => true,
                  remoteUserLeaveSuccess: (_) => true,
                  orElse: () => false,
                ),
            builder: (context, state) {
              Logger.print(
                  'state.isRemoteUserJoined: ${state.isRemoteUserJoined}');
              Logger.print(
                  'local uid: ${state.localUid} | remote uid: ${state.remoteUid}');
              if (!state.isRemoteUserJoined && state.localUid < 0) {
                return buildNoUserUi();
              }

              if (!state.isRemoteUserJoined || state.remoteUid < 0) {
                /// Show local user
                Logger.print('Show local user video on fullscreen');
                return state.maybeMap(
                  remoteUserLeaveSuccess: (data) {
                    final engine = data.engine;
                    if (engine == null) {
                      return buildNoUserUi();
                    }
                    return AgoraVideoView(
                      controller: VideoViewController(
                        rtcEngine: engine,
                        canvas: const VideoCanvas(uid: 0),
                      ),
                    );
                  },
                  joinChannelSuccess: (data) => AgoraVideoView(
                    controller: VideoViewController(
                      rtcEngine: data.engine,
                      canvas: const VideoCanvas(uid: 0),
                    ),
                  ),
                  orElse: () => buildNoUserUi(),
                );
              }

              return state.maybeMap(
                joinChannelSuccess: (data) => AgoraVideoView(
                  controller: VideoViewController.remote(
                    rtcEngine: data.engine,
                    canvas: VideoCanvas(uid: state.remoteUid),
                    connection:
                        RtcConnection(channelId: data.invitation.channelName),
                  ),
                ),
                remoteUserJoinSuccess: (data) {
                  final invitation = state.invitation;

                  if (invitation == null || state.remoteUid < 0) {
                    return buildNoUserUi();
                  }
                  return AgoraVideoView(
                    controller: VideoViewController.remote(
                      rtcEngine: data.engine,
                      canvas: VideoCanvas(uid: state.remoteUid),
                      connection:
                          RtcConnection(channelId: invitation.channelName),
                    ),
                  );
                },
                orElse: () => buildNoUserUi(),
              );
            }),
      );
    });
  }

  Widget showFloatingVideo() {
    return SafeArea(
      child: Align(
        alignment: Alignment.topRight,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: LayoutBuilder(builder: (context, constraints) {
            final width = constraints.maxWidth / 2.5;
            return SizedBox(
              width: width,
              height: width * 16 / 9,
              child: ClipRRect(
                borderRadius: const BorderRadius.all(
                    Radius.circular(IntuitiveUiConstant.normalRadius)),
                child: BlocBuilder<VideoCallBloc, VideoCallState>(
                    buildWhen: (_, state) => state.maybeMap(
                          initial: (_) => true,
                          joinChannelSuccess: (_) => true,
                          joinChannelFailure: (_) => true,
                          leaveChannelSuccess: (_) => true,
                          remoteUserJoinSuccess: (_) => true,
                          remoteUserJoinFailure: (_) => true,
                          remoteUserLeaveSuccess: (_) => true,
                          orElse: () => false,
                        ),
                    builder: (context, state) {
                      Logger.print(
                          'state.isRemoteUserJoined (${state.runtimeType}) 2: ${state.isRemoteUserJoined}');
                      if (!state.isRemoteUserJoined || state.remoteUid < 0) {
                        return buildNoUserUi();
                      }
                      return state.maybeMap(
                        joinChannelSuccess: (data) => AgoraVideoView(
                          controller: VideoViewController(
                            rtcEngine: data.engine,
                            canvas: const VideoCanvas(uid: 0),
                          ),
                        ),
                        remoteUserJoinSuccess: (data) => AgoraVideoView(
                          controller: VideoViewController(
                            rtcEngine: data.engine,
                            canvas: const VideoCanvas(uid: 0),
                          ),
                        ),
                        orElse: () => buildNoUserUi(),
                      );
                    }),
              ),
            );
          }),
        ),
      ),
    );
  }

  Widget buildNoUserUi() {
    return Builder(builder: (context) {
      return Container(
        color: context.colorScheme().background.withOpacity(0.3),
        child: const Center(
          child: Icon(Icons.no_accounts),
        ),
      );
    });
  }

  Widget showVideoCallConfigurationButtons() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: BlocBuilder<VideoCallControlBloc, VideoCallControlState>(
          builder: (context, state) {
        final VideoCallControlBloc bloc = context.read();
        return Container(
          decoration: BoxDecoration(
              color: context.colorScheme().background.withOpacity(0.5),
              borderRadius: const BorderRadius.all(
                Radius.circular(IntuitiveUiConstant.largeRadius),
              )),
          padding: const EdgeInsets.all(IntuitiveUiConstant.normalSpace),
          margin: const EdgeInsets.all(IntuitiveUiConstant.normalSpace),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IntuitiveCircleIconButton(
                showBorder: false,
                isActive: false,
                activeIconData: Icons.adaptive.flip_camera_outlined,
                iconSize: 35,
                onTap: () =>
                    bloc.add(const VideoCallControlEvent.flipCameraStarted()),
              ),
              IntuitiveCircleIconButton(
                showBorder: false,
                isActive: state.isVideoMuted,
                activeIconData: Icons.videocam_off_outlined,
                iconSize: 35,
                onTap: () =>
                    bloc.add(const VideoCallControlEvent.muteVideoStarted()),
              ),
              IntuitiveCircleIconButton(
                showBorder: false,
                isActive: state.isAudioMuted,
                activeIconData: Icons.mic_off_outlined,
                iconSize: 35,
                onTap: () =>
                    bloc.add(const VideoCallControlEvent.muteAudioStarted()),
              ),
              IntuitiveCircleIconButton(
                showBorder: false,
                isActive: false,
                activeColor: Colors.white,
                passiveColor: Colors.red,
                activeIconData: Icons.close_outlined,
                iconSize: 35,
                onTap: () => Navigator.pop(context),
              ),
            ],
          ),
        );
      }),
    );
  }
}
