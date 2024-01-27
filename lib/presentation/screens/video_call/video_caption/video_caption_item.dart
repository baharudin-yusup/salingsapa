import 'package:flutter/material.dart';

import '../../../components/intuitive_circle_icon_button.dart';
import '../../../services/theme_service.dart';

enum VideoCaptionSendButtonLocation {
  left,
  right,
}

enum VideoCaptionAlignment {
  left,
  right,
}

class VideoCaptionItemStyle {
  final VideoCaptionSendButtonLocation sendButtonLocation;
  final VideoCaptionAlignment alignment;
  final bool showSendButton;
  final double sendIconSize;

  const VideoCaptionItemStyle({
    this.sendButtonLocation = VideoCaptionSendButtonLocation.right,
    this.showSendButton = true,
    this.alignment = VideoCaptionAlignment.left,
    this.sendIconSize = 28,
  });
}

class VideoCaptionItem extends StatelessWidget {
  final String? title;
  final String? caption;
  final VideoCaptionItemStyle style;
  final VoidCallback? onSendButtonPressed;

  const VideoCaptionItem(
    this.caption, {
    super.key,
    this.onSendButtonPressed,
    this.title,
    this.style = const VideoCaptionItemStyle(),
  });

  @override
  Widget build(BuildContext context) {
    if (caption == null || caption!.isEmpty) {
      return const SizedBox();
    }
    final widgets = <Widget>[];

    if (title != null) {
      widgets.add(Flexible(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildTitle(),
            buildCaption(),
          ],
        ),
      ));
    } else {
      widgets.add(Flexible(child: buildCaption()));
    }

    if (style.showSendButton && caption != null) {
      switch (style.sendButtonLocation) {
        case VideoCaptionSendButtonLocation.left:
          widgets.insertAll(0, [
            buildUploadCaptionButton(),
            const SizedBox(width: IntuitiveUiConstant.normalSpace),
          ]);
          break;
        case VideoCaptionSendButtonLocation.right:
          widgets.addAll([
            const SizedBox(width: IntuitiveUiConstant.smallSpace),
            buildUploadCaptionButton(),
          ]);
          break;
      }
    }

    MainAxisAlignment alignment;
    switch (style.alignment) {
      case VideoCaptionAlignment.left:
        alignment = MainAxisAlignment.start;
        break;
      case VideoCaptionAlignment.right:
        alignment = MainAxisAlignment.end;
        break;
    }

    return Row(
      mainAxisAlignment: alignment,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: widgets,
    );
  }

  Widget buildTitle() {
    return Transform.translate(
      offset: const Offset(
          IntuitiveUiConstant.tinySpace, IntuitiveUiConstant.smallSpace - 1),
      child: Builder(builder: (context) {
        return Container(
          padding: const EdgeInsets.symmetric(
            vertical: IntuitiveUiConstant.tinySpace,
            horizontal: IntuitiveUiConstant.smallSpace,
          ),
          decoration: BoxDecoration(
            color: context.colorScheme().background,
            borderRadius: const BorderRadius.all(
                Radius.circular(IntuitiveUiConstant.normalRadius)),
          ),
          child: Text(
            title!,
            textAlign: TextAlign.center,
            style: context.textTheme().labelSmall,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
        );
      }),
    );
  }

  Widget buildCaption() {
    return Builder(
      builder: (context) {
        return Container(
          constraints: const BoxConstraints(minHeight: 40),
          padding: const EdgeInsets.symmetric(
            vertical: IntuitiveUiConstant.smallSpace,
            horizontal: IntuitiveUiConstant.normalSpace,
          ),
          decoration: BoxDecoration(
            color: context.colorScheme().background.withOpacity(0.7),
            borderRadius: const BorderRadius.all(
                Radius.circular(IntuitiveUiConstant.normalRadius)),
          ),
          child: Text(
            caption!,
            textAlign: TextAlign.center,
            style: context.textTheme().bodyMedium,
            overflow: TextOverflow.ellipsis,
            maxLines: 3,
          ),
        );
      },
    );
  }

  Widget buildUploadCaptionButton() {
    return IntuitiveCircleIconButton(
      iconSize: style.sendIconSize,
      activeIconData: Icons.send_rounded,
      onTap: onSendButtonPressed,
    );
  }
}
