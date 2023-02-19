import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IntuitiveScaffold extends StatelessWidget {
  final Widget child;
  final IntuitiveAppBar? appBar;

  const IntuitiveScaffold({Key? key, required this.child, this.appBar})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS || true) {
      return _buildCupertinoScaffold();
    }

    return _buildMaterialScaffold();
  }

  Widget _buildCupertinoScaffold() {
    CupertinoNavigationBar? navigationBar;

    if (appBar != null) {
      navigationBar = CupertinoNavigationBar(
        leading: appBar!.leading,
        middle: appBar!.middle,
        trailing: appBar!.cupertinoTrailing,
      );
    }

    return CupertinoPageScaffold(
      navigationBar: navigationBar,
      child: child,
    );
  }

  Widget _buildMaterialScaffold() {
    AppBar? materialAppBar;

    if (appBar != null) {
      materialAppBar = AppBar(
        leading: appBar!.leading,
        title: appBar!.middle,
        actions: appBar!.materialActions,
      );
    }

    return Scaffold(
      appBar: materialAppBar,
      body: child,
    );
  }
}

class IntuitiveAppBar {
  final Widget? leading;
  final Widget? middle;
  final List<Widget>? materialActions;
  final Widget? cupertinoTrailing;

  IntuitiveAppBar({
    this.leading,
    this.middle,
    this.materialActions,
    this.cupertinoTrailing,
  });
}
