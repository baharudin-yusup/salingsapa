import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../blocs/sign_language_recognition_bloc/sign_language_recognition_bloc.dart';
import '../../blocs/speech_recognition_bloc/speech_recognition_bloc.dart';
import '../../blocs/video_call/video_call_bloc.dart';
import '../../blocs/video_call_caption/video_call_caption_bloc.dart';
import '../../components/intuitive_circle_icon_button.dart';
import '../../services/theme_service.dart';

class RecognitionButtonsFragment extends StatelessWidget {
  final double radius;

  const RecognitionButtonsFragment({
    Key? key,
    this.radius = 25,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<SignLanguageRecognitionBloc, SignLanguageRecognitionState>(
          listener: (context, state) {
            state.maybeMap(
              failure: (state) {
                Fluttertoast.showToast(
                  msg: state.failure.errorMessage,
                  toastLength: Toast.LENGTH_SHORT,
                );
              },
              orElse: () {},
            );
          },
        ),
      ],
      child: Container(
        decoration: BoxDecoration(
          color: context.colorScheme().background.withOpacity(0.5),
          borderRadius: const BorderRadius.all(
            Radius.circular(IntuitiveUiConstant.normalRadius),
          ),
        ),
        padding: const EdgeInsets.all(IntuitiveUiConstant.smallSpace),
        margin: const EdgeInsets.all(IntuitiveUiConstant.normalSpace),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildSpeechRecognitionButton(),
            const SizedBox(height: IntuitiveUiConstant.tinySpace),
            _buildSignLanguageRecognitionButton(),
            const SizedBox(height: IntuitiveUiConstant.tinySpace),
            _buildDisableRecognitionButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildSpeechRecognitionButton() {
    return BlocBuilder<SpeechRecognitionBloc, SpeechRecognitionState>(
      buildWhen: (a, b) => a.isReady != b.isReady || a.status != b.status,
      builder: (context, state) {
        return IntuitiveCircleIconButton(
          showBorder: false,
          isActive: state.isReady && state.isEnabled,
          activeIconData: Icons.spatial_audio_off_outlined,
          radius: radius,
          onTap: () =>
              _toggleFeature(context, isSpeechRecognitionEnabled: true),
        );
      },
    );
  }

  Widget _buildSignLanguageRecognitionButton() {
    return BlocBuilder<SignLanguageRecognitionBloc,
            SignLanguageRecognitionState>(
        buildWhen: (a, b) =>
            a.isReady != b.isReady || a.isEnabled != b.isEnabled,
        builder: (context, state) {
          return IntuitiveCircleIconButton(
            showBorder: false,
            isActive: state.isEnabled,
            activeIconData: Icons.sign_language_outlined,
            radius: radius,
            onTap: () => _toggleFeature(context, isSignLanguageEnabled: true),
          );
        });
  }

  Widget _buildDisableRecognitionButton() {
    return BlocBuilder<SpeechRecognitionBloc, SpeechRecognitionState>(
      buildWhen: (a, b) => a.isReady != b.isReady || a.isEnabled != b.isEnabled,
      builder: (context, state) {
        final isSpeechRecognitionEnabled = state.isReady && state.isEnabled;
        return BlocBuilder<SignLanguageRecognitionBloc,
            SignLanguageRecognitionState>(
          buildWhen: (a, b) =>
              a.isReady != b.isReady || a.isEnabled != b.isEnabled,
          builder: (context, state) {
            final isSignLanguageRecognitionEnabled =
                state.isReady && state.isEnabled;
            return IntuitiveCircleIconButton(
              showBorder: false,
              isActive: !isSpeechRecognitionEnabled &&
                  !isSignLanguageRecognitionEnabled,
              activeIconData: Icons.not_interested_outlined,
              radius: radius,
              onTap: () => _toggleFeature(context),
            );
          },
        );
      },
    );
  }

  void _toggleFeature(
    BuildContext context, {
    bool isSpeechRecognitionEnabled = false,
    bool isSignLanguageEnabled = false,
  }) {
    final SpeechRecognitionBloc speechRecognitionBloc = context.read();
    final SignLanguageRecognitionBloc signLanguageRecognitionBloc =
        context.read();
    final VideoCallBloc videoCallBloc = context.read();

    speechRecognitionBloc.add(SpeechRecognitionEvent.toggleFeatureStarted(
        isSpeechRecognitionEnabled));

    videoCallBloc.add(VideoCallEvent.takePhotoSnapshotFeatureStatusChanged(
        isSignLanguageEnabled));
    signLanguageRecognitionBloc.add(
        SignLanguageRecognitionEvent.toggleFeatureStarted(
            isSignLanguageEnabled));

    if (!isSpeechRecognitionEnabled && !isSignLanguageEnabled) {
      final VideoCallCaptionBloc videoCallCaptionBloc = context.read();
      videoCallCaptionBloc
          .add(const VideoCallCaptionEvent.localCaptionReceived());
    }
  }
}
