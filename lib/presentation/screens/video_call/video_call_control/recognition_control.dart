import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../domain/entities/recognition_status.dart';
import '../../../blocs/sign_language_recognition_bloc/sign_language_recognition_bloc.dart';
import '../../../blocs/speech_recognition_bloc/speech_recognition_bloc.dart';
import '../../../blocs/video_call_caption/video_call_caption_bloc.dart';
import '../../../blocs/video_call_control/video_call_control_bloc.dart';
import '../../../components/intuitive_circle_icon_button.dart';
import '../../../services/theme_service.dart';

class RecognitionButtonsFragmentStyle {
  final double iconSize;

  const RecognitionButtonsFragmentStyle({
    this.iconSize = 30,
  });
}

class RecognitionControl extends StatelessWidget {
  final RecognitionButtonsFragmentStyle style;

  const RecognitionControl({
    super.key,
    this.style = const RecognitionButtonsFragmentStyle(),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
          const SizedBox(height: IntuitiveUiConstant.smallSpace),
          _buildSignLanguageRecognitionButton(),
          const SizedBox(height: IntuitiveUiConstant.smallSpace),
          _buildDisableRecognitionButton(),
        ],
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
          isLoading: state.status.isLoading,
          activeIconData: Icons.spatial_audio_off_outlined,
          iconSize: style.iconSize,
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
            iconSize: style.iconSize,
            onTap: () => _toggleFeature(context, isSignLanguageEnabled: true),
          );
        });
  }

  Widget _buildDisableRecognitionButton() {
    return BlocBuilder<SpeechRecognitionBloc, SpeechRecognitionState>(
      builder: (context, speechRecognitionState) {
        final isSpeechRecognitionEnabled =
            speechRecognitionState.isReady && speechRecognitionState.isEnabled;
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
              isLoading: ((speechRecognitionState.status.data ==
                          RecognitionStatus.on ||
                      speechRecognitionState.status.data ==
                          RecognitionStatus.listening) &&
                  speechRecognitionState.status.isLoading),
              activeIconData: Icons.not_interested_outlined,
              iconSize: style.iconSize,
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
    final VideoCallControlBloc videoCallControlBloc = context.read();
    final SpeechRecognitionBloc speechRecognitionBloc = context.read();
    final SignLanguageRecognitionBloc signLanguageRecognitionBloc =
        context.read();

    videoCallControlBloc.add(VideoCallControlEvent.changeAudioFeatureStarted(
        isDisabled: isSpeechRecognitionEnabled));
    speechRecognitionBloc.add(SpeechRecognitionEvent.toggleFeatureStarted(
        isSpeechRecognitionEnabled));

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
