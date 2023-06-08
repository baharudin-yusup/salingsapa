import 'package:agora_rtc_engine/agora_rtc_engine.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/utils/logger.dart';
import '../../../domain/entities/recognition_status.dart';
import '../../blocs/sign_language_recognition_bloc/sign_language_recognition_bloc.dart';
import '../../blocs/speech_recognition_bloc/speech_recognition_bloc.dart';
import '../../blocs/video_call/video_call_bloc.dart';
import '../../blocs/video_call_caption/video_call_caption_bloc.dart';
import '../../blocs/video_call_control/video_call_control_bloc.dart';
import '../../components/intuitive_circle_icon_button.dart';
import '../../components/intuitive_scaffold.dart';
import '../../services/theme_service.dart';
import '../../utils/dimension.dart';
import 'caption_fragment.dart';
import 'recognition_buttons_fragment.dart';

class VideoCallScreen extends StatelessWidget {
  static const routeName = '/video-call';

  const VideoCallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntuitiveScaffold(
      child: MultiBlocListener(
        listeners: [
          BlocListener<VideoCallBloc, VideoCallState>(
            listener: (context, state) {
              final SignLanguageRecognitionBloc signLanguageRecognitionBloc =
                  context.read();
              final VideoCallCaptionBloc videoCallCaptionBloc = context.read();
              final SpeechRecognitionBloc speechRecognitionBloc =
                  context.read();
              state.maybeMap(
                joinChannelSuccess: (data) {
                  final invitationId = data.invitation.invitationId;
                  videoCallCaptionBloc.add(VideoCallCaptionEvent.started(
                      invitationId: invitationId));

                  final engine = data.engine;
                  signLanguageRecognitionBloc
                      .add(SignLanguageRecognitionEvent.started(engine));
                  speechRecognitionBloc
                      .add(const SpeechRecognitionEvent.started());
                },
                remoteUserJoinSuccess: (data) {
                  final engine = data.engine;
                  signLanguageRecognitionBloc
                      .add(SignLanguageRecognitionEvent.started(engine));
                  speechRecognitionBloc
                      .add(const SpeechRecognitionEvent.started());
                },
                orElse: () {},
              );
            },
          ),
          BlocListener<SpeechRecognitionBloc, SpeechRecognitionState>(
            listener: (context, state) {
              state.maybeWhen(
                caption: (_, status, caption) {
                  final VideoCallCaptionBloc bloc = context.read();

                  switch (status) {
                    case RecognitionStatus.off:
                      bloc.add(
                          VideoCallCaptionEvent.uploadCaptionStarted(caption));
                      break;
                    case RecognitionStatus.on:
                    case RecognitionStatus.listening:
                      bloc.add(
                          VideoCallCaptionEvent.localCaptionReceived(caption));
                      break;
                  }
                },
                orElse: () {},
              );
            },
          ),
          BlocListener<SignLanguageRecognitionBloc,
              SignLanguageRecognitionState>(
            listener: (context, state) {
              state.maybeWhen(
                updateCaptionSuccess: (_, status, caption) {
                  final VideoCallCaptionBloc bloc = context.read();

                  switch (status) {
                    case RecognitionStatus.off:
                      bloc.add(
                          VideoCallCaptionEvent.uploadCaptionStarted(caption));
                      break;
                    case RecognitionStatus.on:
                    case RecognitionStatus.listening:
                      bloc.add(
                          VideoCallCaptionEvent.localCaptionReceived(caption));
                      break;
                  }
                },
                orElse: () {},
              );
            },
          ),
        ],
        child: buildBody(),
      ),
    );
  }

  Widget buildBody() {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        showFullScreenVideo(),
        buildCaptions(),
        showFloatingVideo(),
        buildRecognitionButton(),
        showVideoCallConfigurationButtons(),
      ],
    );
  }

  Widget buildCaptions() {
    return BlocBuilder<VideoCallCaptionBloc, VideoCallCaptionState>(
      builder: (context, videoCallCaptionState) {
        if (!videoCallCaptionState.isEnabled) {
          return const SizedBox();
        }

        final VideoCallCaptionBloc videoCallCaptionBloc = context.read();
        return BlocBuilder<SignLanguageRecognitionBloc,
                SignLanguageRecognitionState>(
            builder: (context, signLanguageState) {
          final localCaption = videoCallCaptionState.localCaptions.combine();
          final remoteCaption = videoCallCaptionState.remoteCaptions;
          final widgets = <Widget>[];
          if (remoteCaption != null) {
            widgets.add(VideoCaption(
              remoteCaption,
              title: 'He / She',
              showSendButton: false,
            ));
          }

          widgets.add(
            VideoCaption(
              localCaption?.rawData,
              title: 'You',
              alignment: VideoCaptionAlignment.right,
              showSendButton: localCaption != null,
              onSendButtonPressed: () {
                if (localCaption != null) {
                  videoCallCaptionBloc.add(
                      VideoCallCaptionEvent.uploadCaptionStarted(localCaption));
                  final SignLanguageRecognitionBloc
                      signLanguageRecognitionBloc = context.read();
                  signLanguageRecognitionBloc.add(
                      const SignLanguageRecognitionEvent.resetDataStarted());
                }
              },
            ),
          );

          if (widgets.length == 2) {
            widgets.insert(
                1, const SizedBox(height: IntuitiveUiConstant.tinySpace));
          }

          return Positioned(
            bottom: context.maxHeight * 0.2,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: IntuitiveUiConstant.normalSpace),
              child: ConstrainedBox(
                constraints: BoxConstraints(maxWidth: context.maxWidth * 0.9),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: widgets,
                ),
              ),
            ),
          );
        });
      },
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
          padding: const EdgeInsets.all(IntuitiveUiConstant.normalSpace),
          child: LayoutBuilder(
            builder: (context, constraints) {
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
                    },
                  ),
                ),
              );
            },
          ),
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
    Widget buildCaptionButton() {
      return BlocBuilder<VideoCallCaptionBloc, VideoCallCaptionState>(
        buildWhen: (a, b) => a.isEnabled != b.isEnabled,
        builder: (context, state) {
          return IntuitiveCircleIconButton(
            showBorder: false,
            isActive: state.isEnabled,
            activeIconData: Icons.closed_caption_outlined,
            iconSize: 35,
            onTap: () => context
                .read<VideoCallCaptionBloc>()
                .add(const VideoCallCaptionEvent.toggleFeatureStarted()),
          );
        },
      );
    }

    return Align(
      alignment: Alignment.bottomCenter,
      child: BlocBuilder<VideoCallControlBloc, VideoCallControlState>(
          builder: (context, state) {
        final VideoCallControlBloc bloc = context.read();
        return Container(
          decoration: BoxDecoration(
              color: context.colorScheme().background.withOpacity(0.5),
              borderRadius: const BorderRadius.all(
                Radius.circular(IntuitiveUiConstant.normalRadius),
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
              buildCaptionButton(),
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

  Widget buildRecognitionButton() {
    return const SafeArea(
      child: Align(
        alignment: Alignment.topLeft,
        child: RecognitionButtonsFragment(),
      ),
    );
  }
}
