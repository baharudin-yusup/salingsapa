import 'package:flutter/material.dart';
import 'package:saling_sapa/presentation/screens/history_screen.dart';
import 'package:saling_sapa/presentation/screens/home_screen.dart';
import 'package:saling_sapa/presentation/screens/setting_screen.dart';
import 'package:saling_sapa/presentation/screens/video_call_screen.dart';
import 'package:saling_sapa/presentation/services/navigator_service.dart';

import '../../injection_container.dart';
import 'splash.dart';

class AppScreen extends StatelessWidget {
  const AppScreen({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      navigatorKey: sl<NavigatorService>().navigatorKey,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: (settings) {
        late final Widget screen;
        switch (settings.name) {
          case HistoryScreen.routeName:
            screen = const HistoryScreen();
            break;
          case HomeScreen.routeName:
            screen = const HomeScreen();
            break;
          case SettingScreen.routeName:
            screen = const SettingScreen();
            break;
          case VideoCallScreen.routeName:
            screen = const VideoCallScreen();
            break;
          default:
            screen = const SplashScreen(title: 'Splash');
        }

        return MaterialPageRoute(
          builder: (context) => screen,
        );
      },
    );
  }
}
