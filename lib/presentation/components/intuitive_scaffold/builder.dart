import 'package:flutter/material.dart';

import 'intuitive_floating_action_button.dart';

extension IntuitiveFloatingActionButtonBuilder
    on IntuitiveFloatingActionButton {
  Widget get build {
    switch (size) {
      case IntuitiveFloatingActionButtonSize.normal:
        return FloatingActionButton(
          onPressed: onPressed,
          tooltip: label,
          child: icon,
        );
      case IntuitiveFloatingActionButtonSize.large:
        return FloatingActionButton.large(
          onPressed: onPressed,
          tooltip: label,
          child: icon,
        );
      case IntuitiveFloatingActionButtonSize.extended:
        return FloatingActionButton.extended(
          onPressed: onPressed,
          label: Text(label),
          tooltip: label,
          icon: icon,
        );
    }
  }
}
