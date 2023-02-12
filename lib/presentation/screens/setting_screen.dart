import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  static const routeName = '/settings';

  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text('Settings Screen'),
      ),
    );
  }
}
