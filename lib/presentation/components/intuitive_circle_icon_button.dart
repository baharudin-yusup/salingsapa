import 'package:flutter/material.dart';

import '../services/theme_service.dart';

class IntuitiveCircleIconButton extends StatelessWidget {
  final bool isActive;
  final Widget? activeIcon;
  final IconData activeIconData;
  final IconData? passiveIconData;
  final double iconSize;
  final double radius;
  final VoidCallback? onTap;
  final bool showBorder;
  final Color? activeColor;
  final Color? passiveColor;
  final bool isLoading;

  const IntuitiveCircleIconButton({
    super.key,
    this.isActive = false,
    this.activeIcon,
    this.isLoading = false,
    required this.activeIconData,
    this.passiveIconData,
    double? radius,
    required this.iconSize,
    required this.onTap,
    this.showBorder = false,
    this.activeColor,
    this.passiveColor,
  }) : radius = radius ?? iconSize * 0.83;

  @override
  Widget build(BuildContext context) {
    final primaryColor = activeColor ?? context.colorScheme().primary;
    final onPrimaryColor = passiveColor ?? context.colorScheme().surface;

    final backgroundColor = isActive ? primaryColor : onPrimaryColor;
    final foregroundColor = isActive ? onPrimaryColor : primaryColor;
    return showBorder
        ? CircleAvatar(
            backgroundColor: backgroundColor,
            radius: radius + 2,
            child: showButton(backgroundColor, foregroundColor),
          )
        : showButton(backgroundColor, foregroundColor);
  }

  Widget showButton(Color backgroundColor, Color foregroundColor) {
    return CircleAvatar(
      backgroundColor: backgroundColor,
      radius: radius,
      child: isLoading
          ? buildLoadingIndicator(foregroundColor)
          : (isActive
              ? buildActiveIconButton(foregroundColor)
              : buildInactiveIconButton(foregroundColor)),
    );
  }

  Widget buildActiveIconButton(Color color) {
    return IconButton(
      icon: Icon(
        activeIconData,
        size: iconSize,
        color: color,
      ),
      onPressed: onTap,
    );
  }

  Widget buildInactiveIconButton(Color color) {
    return IconButton(
      icon: Icon(
        passiveIconData ?? activeIconData,
        size: iconSize,
        color: color,
      ),
      onPressed: onTap,
    );
  }

  Widget buildLoadingIndicator(Color color) {
    return SizedBox.square(
      dimension: iconSize,
      child: CircularProgressIndicator.adaptive(
          valueColor: AlwaysStoppedAnimation(color)),
    );
  }
}
