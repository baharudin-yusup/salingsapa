import 'package:flutter/material.dart';

class VideoCallScreen extends StatelessWidget {
  static const routeName = '/video-call';

  const VideoCallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text('Video Call Screen'),
      ),
    );
  }
}
