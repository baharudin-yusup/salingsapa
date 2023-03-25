import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:salingsapa/presentation/components/intuitive_scaffold/builder.dart';

import 'intuitive_scaffold/intuitive_floating_action_button.dart';

class IntuitiveScaffold extends StatelessWidget {
  final Widget child;
  final IntuitiveAppBar? appBar;
  final IntuitiveBottomNavigationBar? bottomNavigationBar;
  final IntuitiveFloatingActionButton? floatingActionButton;

  const IntuitiveScaffold({
    Key? key,
    required this.child,
    this.appBar,
    this.bottomNavigationBar,
    this.floatingActionButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
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
    late final AppBar? materialAppBar;
    if (appBar != null) {
      materialAppBar = AppBar(
        leading: appBar!.leading,
        title: appBar!.middle,
        actions: appBar!.materialActions,
      );
    } else {
      materialAppBar = null;
    }

    late final NavigationBar? materialNavigationBar;
    if (bottomNavigationBar != null) {
      materialNavigationBar = NavigationBar(
        selectedIndex: bottomNavigationBar!.currentIndex,
        onDestinationSelected: bottomNavigationBar!.onChanged,
        destinations: bottomNavigationBar!.items
            .map((item) =>
                NavigationDestination(icon: item.icon, label: item.label))
            .toList(),
      );
    } else {
      materialNavigationBar = null;
    }

    return Scaffold(
      appBar: materialAppBar,
      body: child,
      bottomNavigationBar: materialNavigationBar,
      floatingActionButton: floatingActionButton?.build,
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

class IntuitiveBottomNavigationBar {
  final int currentIndex;
  final void Function(int index) onChanged;
  final List<IntuitiveBottomNavigationBarItem> items;

  IntuitiveBottomNavigationBar({
    required this.items,
    required this.onChanged,
    this.currentIndex = 0,
  });
}

class IntuitiveBottomNavigationBarItem {
  final Widget icon;
  final String label;

  IntuitiveBottomNavigationBarItem({
    required this.icon,
    required this.label,
  });
}
