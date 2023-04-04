import 'package:flutter/material.dart';

import '../services/theme_service.dart';

class IntuitiveCircleIconButton extends StatelessWidget {
  final bool isActive;
  final IconData activeIconData;
  final IconData? passiveIconData;
  final double iconSize;
  final double radius;
  final VoidCallback onTap;
  final bool showColorChange;
  final bool showBorder;
  final Color? activeColor;
  final Color? passiveColor;

  const IntuitiveCircleIconButton({
    Key? key,
    required this.isActive,
    required this.activeIconData,
    this.passiveIconData,
    this.iconSize = 40,
    this.radius = 30,
    required this.onTap,
    this.showColorChange = true,
    this.showBorder = false,
    this.activeColor,
    this.passiveColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final primaryColor = activeColor ?? context.colorScheme().primary;
    final onPrimaryColor = passiveColor ?? context.colorScheme().background;
    return showBorder
        ? CircleAvatar(
            backgroundColor:
                isActive && showColorChange ? primaryColor : onPrimaryColor,
            radius: radius + 2,
            child: showButton(primaryColor, onPrimaryColor),
          )
        : showButton(primaryColor, onPrimaryColor);
  }

  Widget showButton(Color primaryColor, Color onPrimaryColor) {
    return CircleAvatar(
      backgroundColor:
          isActive && showColorChange ? primaryColor : onPrimaryColor,
      radius: radius,
      child: IconButton(
        icon: Icon(
          isActive || passiveIconData == null
              ? activeIconData
              : passiveIconData,
          size: iconSize,
          color: isActive && showColorChange ? onPrimaryColor : primaryColor,
        ),
        onPressed: onTap,
      ),
    );
  }
}
