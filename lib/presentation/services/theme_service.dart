import 'package:flutter/material.dart';

class IntuitiveUiConstant {
  static const veryTinySpace = 3.0;
  static const tinySpace = 6.0;
  static const smallSpace = 10.0;
  static const normalSpace = NavigationToolbar.kMiddleSpacing;
  static const largeSpace = 20.0;
  static const hugeSpace = 40.0;

  static const smallRadius = 8.0;
  static const normalRadius = 16.0;
  static const largeRadius = 32.0;

  static const listPadding = EdgeInsets.fromLTRB(
    normalSpace,
    hugeSpace,
    normalSpace,
    largeSpace,
  );
}

extension ThemeContext on BuildContext {
  ColorScheme colorScheme() {
    return Theme.of(this).colorScheme;
  }

  TextTheme textTheme() {
    return Theme.of(this).textTheme;
  }
}
