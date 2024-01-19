import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'intuitive_scaffold/builder.dart';
import 'intuitive_scaffold/intuitive_floating_action_button.dart';

class IntuitiveScaffold extends StatelessWidget {
  final Widget Function(BuildContext context) builder;
  final IntuitiveAppBar? appBar;
  final IntuitiveBottomNavigationBar? bottomNavigationBar;
  final IntuitiveFloatingActionButton? floatingActionButton;

  const IntuitiveScaffold({
    super.key,
    required this.builder,
    this.appBar,
    this.bottomNavigationBar,
    this.floatingActionButton,
  });

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

    if (bottomNavigationBar != null) {
      CupertinoTabBar? x;
      x = CupertinoTabBar(
        items: bottomNavigationBar!.items
            .map((e) => BottomNavigationBarItem(icon: e.icon, label: e.label))
            .toList(),
      );

      return CupertinoTabScaffold(
        tabBar: x,
        tabBuilder: bottomNavigationBar!.tabBuilder!,
      );
    }

    return CupertinoPageScaffold(
      navigationBar: navigationBar,
      child: Builder(builder: builder),
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
      body: Builder(builder: builder),
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
  final Widget Function(BuildContext context, int index)? tabBuilder;
  final List<IntuitiveBottomNavigationBarItem> items;

  IntuitiveBottomNavigationBar({
    required this.items,
    required this.onChanged,
    this.tabBuilder,
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
