import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../../core/utils/logger.dart';
import '../../../domain/entities/recognition_status.dart';
import '../../../injection_container.dart';
import '../../blocs/sign_language_recognition_bloc/sign_language_recognition_bloc.dart';
import '../../blocs/speech_recognition_bloc/speech_recognition_bloc.dart';
import '../../blocs/video_call/video_call_bloc.dart';
import '../../blocs/video_call_caption/video_call_caption_bloc.dart';
import '../../blocs/video_call_control/video_call_control_bloc.dart';
import '../../components/intuitive_scaffold/intuitive_scaffold.dart';
import '../../services/navigator_service.dart';
import '../../services/ui_service.dart';
import '../../utils/dimension.dart';
import 'video_call_control/recognition_control.dart';
import 'video_call_control/video_call_control.dart';
import 'video_caption/video_caption_list.dart';
import 'video_interface/floating_video_interface.dart';
import 'video_interface/fullscreen_video_interface.dart';

class VideoCallScreen extends StatelessWidget {
  static const routeName = '/video-call';

  const VideoCallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) {
        if (!didPop) {
          _showExitConfirmation(context);
        }
      },
      child: IntuitiveScaffold(
        builder: (context) => MultiBlocListener(
          listeners: [
            BlocListener<VideoCallBloc, VideoCallState>(
              listener: (context, state) {
                state.maybeMap(
                  initEngineFailure: (state) async {
                    final UiService uiService = sl();
                    final NavigatorService navigatorService = sl();
                    await uiService.showDialog(
                      DialogData(
                        description: state.failure.errorMessage,
                        actions: [
                          DialogActionData(
                            title: context.localization.ok,
                            onPressed: () => navigatorService.pop(),
                          )
                        ],
                      ),
                    );
                    navigatorService.pop();
                  },
                  joinRoomSuccess: (state) {
                    final SignLanguageRecognitionBloc
                        signLanguageRecognitionBloc = context.read();
                    final VideoCallCaptionBloc videoCallCaptionBloc =
                        context.read();
                    final SpeechRecognitionBloc speechRecognitionBloc =
                        context.read();
                    videoCallCaptionBloc
                        .add(VideoCallCaptionEvent.started(state.room));
                    signLanguageRecognitionBloc.add(
                        SignLanguageRecognitionEvent.started(state.engine));
                    speechRecognitionBloc
                        .add(const SpeechRecognitionEvent.started());
                  },
                  leaveRoomInProgress: (state) {
                    final UiService uiService = sl();
                    uiService.showLoading();
                  },
                  leaveRoomFailure: (state) {
                    final UiService uiService = sl();
                    uiService.hideLoading();
                    Fluttertoast.showToast(msg: state.failure.errorMessage);
                  },
                  leaveRoomSuccess: (state) {
                    // TODO: add close sign language recognition
                    // final SignLanguageRecognitionBloc signLanguageRecognitionBloc = context.read();
                    // TODO: add close speech recognition recognition
                    // final SpeechRecognitionBloc speechRecognitionBloc = context.read();

                    // Hide loading from leave room in progress
                    final UiService uiService = sl();
                    uiService.hideLoading();

                    // Close the screen
                    final NavigatorService navigatorService = sl();
                    navigatorService.pop();
                  },
                  orElse: () {},
                );
              },
            ),
            BlocListener<SpeechRecognitionBloc, SpeechRecognitionState>(
              listener: (context, state) {
                state.maybeMap(
                  initial: (state) {
                    if (state.status.data == RecognitionStatus.on) {
                      final VideoCallCaptionBloc bloc = context.read();
                      bloc.add(const VideoCallCaptionEvent.localCaptionReceived(
                          null));
                    }

                    // Toggle enable/disable audio
                    if ((state.status.data == RecognitionStatus.off ||
                            state.status.data == RecognitionStatus.on) &&
                        state.status.isLoading) {
                      Logger.print(
                          'toggle audio feature started, current speech recognition state is ${state.runtimeType}, recognition status is ${state.status.data}, and currently ${state.status.isLoading ? 'is loading' : 'is idle'}');
                      final VideoCallControlBloc videoCallBloc = context.read();
                      videoCallBloc.add(
                        VideoCallControlEvent.changeAudioFeatureStarted(
                          isDisabled: state.status.data == RecognitionStatus.on,
                        ),
                      );
                    }
                  },
                  captionReceiveSuccess: (state) {
                    final VideoCallCaptionBloc bloc = context.read();

                    if (state.status.isLoading) {
                      return;
                    }
                    switch (state.status.data) {
                      case RecognitionStatus.off:
                        // Upload the final local caption
                        bloc.add(VideoCallCaptionEvent.uploadCaptionStarted(
                            state.caption));
                        break;
                      case RecognitionStatus.on:
                      case RecognitionStatus.listening:
                        // Just update the local caption
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
        const VideoCallControl(),
      ],
    );
  }

  Widget buildRecognitionButton() {
    return const SafeArea(
      child: Align(
        alignment: Alignment.topLeft,
        child: RecognitionControl(),
      ),
    );
  }

  void _showExitConfirmation(BuildContext context) {
    final UiService uiService = sl();
    final NavigatorService navigatorService = sl();
    uiService.showDialog(
      DialogData(
        title: context.localization.endVideoCallConfirmationTitle,
        description: context.localization.endVideoCallConfirmationDescription,
        actions: [
          DialogActionData(
            title: context.localization.yesEndCall,
            isNegative: true,
            onPressed: () {
              // Close the dialog
              navigatorService.pop();

              final VideoCallBloc videoCallBloc = context.read();
              videoCallBloc.add(const VideoCallEvent.leaveRoomStarted());
            },
          ),
          DialogActionData(
            title: context.localization.cancel,
            onPressed: () {
              // Close the dialog
              navigatorService.pop();
            },
          ),
        ],
      ),
    );
  }
}
