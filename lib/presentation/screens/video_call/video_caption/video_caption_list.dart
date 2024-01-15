import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salingsapa/presentation/screens/video_call/video_caption/video_caption_item.dart';

import '../../../blocs/sign_language_recognition_bloc/sign_language_recognition_bloc.dart';
import '../../../blocs/video_call_caption/video_call_caption_bloc.dart';
import '../../../services/theme_service.dart';
import '../../../utils/dimension.dart';

class VideoCaptionList extends StatelessWidget {
  const VideoCaptionList({super.key});

  @override
  Widget build(BuildContext context) {
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
            widgets.add(VideoCaptionItem(
              remoteCaption,
              title: 'He / She',
              showSendButton: false,
            ));
          }

          widgets.add(
            VideoCaptionItem(
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
}