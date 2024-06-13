import 'package:flutter/material.dart';

enum IntuitiveFloatingActionButtonSize {
  normal,
  large,
  extended,
}

class IntuitiveFloatingActionButton {
  final void Function()? onPressed;
  final IntuitiveFloatingActionButtonSize size;
  final String label;
  final Widget? icon;

  const IntuitiveFloatingActionButton({
    required this.label,
    this.onPressed,
    this.size = IntuitiveFloatingActionButtonSize.normal,
    this.icon,
  });
}
