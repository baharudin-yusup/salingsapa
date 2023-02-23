import 'package:flutter/material.dart';

class IntuitiveUiConstant {
  static const tinySpace = 6.0;
  static const smallSpace = 10.0;
  static const normalSpace = NavigationToolbar.kMiddleSpacing;
  static const largeSpace = 20.0;
  static const hugeSpace = 40.0;

  static const normalRadius = 16.0;
}

extension ThemeContext on BuildContext {
  ColorScheme colorScheme() {
    return Theme.of(this).colorScheme;
  }

  TextTheme textTheme() {
    return Theme.of(this).textTheme;
  }
}
