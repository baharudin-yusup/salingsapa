import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  static const routeName = '/settings';

  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text('Settings Screen'),
      ),
    );
  }
}
