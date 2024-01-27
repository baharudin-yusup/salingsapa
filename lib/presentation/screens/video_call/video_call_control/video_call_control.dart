import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../blocs/video_call/video_call_bloc.dart';
import '../../../blocs/video_call_caption/video_call_caption_bloc.dart';
import '../../../blocs/video_call_control/video_call_control_bloc.dart';
import '../../../components/intuitive_circle_icon_button.dart';
import '../../../services/theme_service.dart';

class VideoCallControlStyle {
  final double iconSize;

  const VideoCallControlStyle({
    this.iconSize = 30,
  });
}

class VideoCallControl extends StatelessWidget {
  final VideoCallControlStyle style;

  const VideoCallControl({
    super.key,
    this.style = const VideoCallControlStyle(),
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: BlocBuilder<VideoCallControlBloc, VideoCallControlState>(
        builder: (context, state) {
          final VideoCallControlBloc bloc = context.read();
          return Container(
            decoration: BoxDecoration(
              color: context.colorScheme().background.withOpacity(0.2),
              borderRadius: const BorderRadius.all(
                Radius.circular(IntuitiveUiConstant.normalRadius),
              ),
            ),
            padding: const EdgeInsets.all(IntuitiveUiConstant.smallSpace),
            margin: const EdgeInsets.all(IntuitiveUiConstant.normalSpace),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IntuitiveCircleIconButton(
                  showBorder: false,
                  isActive: false,
                  activeIconData: Icons.adaptive.flip_camera_outlined,
                  iconSize: style.iconSize,
                  onTap: () =>
                      bloc.add(const VideoCallControlEvent.flipCameraStarted()),
                ),
                const SizedBox(width: IntuitiveUiConstant.smallSpace),
                IntuitiveCircleIconButton(
                  showBorder: false,
                  isActive: state.isVideoMuted.data,
                  activeIconData: Icons.videocam_off_outlined,
                  iconSize: style.iconSize,
                  onTap: () =>
                      bloc.add(const VideoCallControlEvent.muteVideoStarted()),
                ),
                const SizedBox(width: IntuitiveUiConstant.smallSpace),
                _buildCaptionButton(),
                const SizedBox(width: IntuitiveUiConstant.smallSpace),
                IntuitiveCircleIconButton(
                  showBorder: false,
                  isActive: false,
                  activeColor: Colors.white,
                  passiveColor: Colors.red,
                  activeIconData: Icons.close_outlined,
                  iconSize: style.iconSize,
                  onTap: () {
                    final VideoCallBloc videoCallBloc = context.read();
                    videoCallBloc.add(const VideoCallEvent.leaveRoomStarted());
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildCaptionButton() {
    return BlocBuilder<VideoCallCaptionBloc, VideoCallCaptionState>(
      buildWhen: (a, b) => a.isEnabled != b.isEnabled,
      builder: (context, state) {
        return IntuitiveCircleIconButton(
          showBorder: false,
          isActive: state.isEnabled,
          activeIconData: Icons.closed_caption_outlined,
          iconSize: style.iconSize,
          onTap: () => context
              .read<VideoCallCaptionBloc>()
              .add(const VideoCallCaptionEvent.toggleFeatureStarted()),
        );
      },
    );
  }
}
