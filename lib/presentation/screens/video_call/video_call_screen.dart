import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

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
import 'recognition_buttons_fragment.dart';
import 'video_caption/video_caption_list.dart';
import 'video_interface/floating_video_interface.dart';
import 'video_interface/fullscreen_video_interface.dart';

class VideoCallScreen extends StatelessWidget {
  static const routeName = '/video-call';

  const VideoCallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return IntuitiveScaffold(
      builder: (context) => MultiBlocListener(
        listeners: [
          BlocListener<VideoCallBloc, VideoCallState>(
            listener: (context, state) {
              state.maybeMap(
                joinRoomSuccess: (state) {
                  final SignLanguageRecognitionBloc
                      signLanguageRecognitionBloc = context.read();
                  final VideoCallCaptionBloc videoCallCaptionBloc =
                      context.read();
                  final SpeechRecognitionBloc speechRecognitionBloc =
                      context.read();
                  videoCallCaptionBloc
                      .add(VideoCallCaptionEvent.started(state.room));
                  signLanguageRecognitionBloc
                      .add(SignLanguageRecognitionEvent.started(state.engine));
                  speechRecognitionBloc
                      .add(const SpeechRecognitionEvent.started());
                },
                orElse: () {},
              );
            },
          ),
          BlocListener<SpeechRecognitionBloc, SpeechRecognitionState>(
            listener: (context, state) {
              state.maybeMap(
                caption: (state) {
                  final VideoCallCaptionBloc bloc = context.read();

                  switch (state.status) {
                    case RecognitionStatus.off:
                      bloc.add(VideoCallCaptionEvent.uploadCaptionStarted(
                          state.caption));
                      break;
                    case RecognitionStatus.on:
                    case RecognitionStatus.listening:
                      bloc.add(VideoCallCaptionEvent.localCaptionReceived(
                          state.caption));
                      break;
                    case RecognitionStatus.idle:
                      // TODO: Handle this case.
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
              state.maybeMap(
                updateCaptionSuccess: (state) {
                  final VideoCallCaptionBloc bloc = context.read();

                  switch (state.status) {
                    case RecognitionStatus.idle:
                    case RecognitionStatus.off:
                      bloc.add(VideoCallCaptionEvent.uploadCaptionStarted(
                          state.caption));
                      break;
                    case RecognitionStatus.on:
                    case RecognitionStatus.listening:
                      bloc.add(VideoCallCaptionEvent.localCaptionReceived(
                          state.caption));
                      break;
                  }
                },
                failure: (state) {
                  state.maybeMap(
                    failure: (state) {
                      Logger.error(state, event: 'event123');
                      Fluttertoast.showToast(msg: state.failure.errorMessage);
                    },
                    orElse: () {},
                  );
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
        const FullscreenVideoInterface(),
        const VideoCaptionList(),
        const FloatingVideoInterface(),
        buildRecognitionButton(),
        showVideoCallConfigurationButtons(),
      ],
    );
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
