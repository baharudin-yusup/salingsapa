import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:saling_sapa/domain/entities/auth_status.dart';
import 'package:saling_sapa/presentation/blocs/authorization/authorization_bloc.dart';
import 'package:saling_sapa/presentation/screens/setting_screen.dart';
import 'package:saling_sapa/presentation/screens/setup_screen.dart';
import 'package:saling_sapa/presentation/screens/video_call_screen.dart';

import '../../injection_container.dart';
import '../services/notification_service.dart';
import 'history_screen.dart';
import 'home_screen.dart';

class RootScreen extends StatefulWidget {
  static const routeName = '/';

  const RootScreen({Key? key}) : super(key: key);

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  @override
  void initState() {
    final NotificationService service = sl();
    service.requestPermission();
    service.init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthorizationBloc>(create: (_) => sl()),
      ],
      child: _rootScreen,
    );
  }

  Map<String, WidgetBuilder> get _routes => {
        HistoryScreen.routeName: (_) => const HistoryScreen(),
        RootScreen.routeName: (context) =>
            context.read<AuthorizationBloc>().state.when(
                  initial: () => const SetupScreen(),
                  changeAuthStatusSuccess: (status) =>
                      status == AuthStatus.authorized
                          ? const HomeScreen()
                          : const SetupScreen(),
                  changeAuthStatusFailure: (_) => const SetupScreen(),
                ),
        SettingScreen.routeName: (_) => const SettingScreen(),
        VideoCallScreen.routeName: (_) => const VideoCallScreen(),
      };

  Widget get _rootScreen {
    if (Platform.isIOS || true) {
      return _IosAppScreen(
        routes: _routes,
      );
    } else {
      return _AndroidAppScreen(
        routes: _routes,
      );
    }
  }
}

class _AndroidAppScreen extends StatelessWidget {
  final Map<String, WidgetBuilder> routes;

  const _AndroidAppScreen({
    Key? key,
    required this.routes,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: routes,
    );
  }
}

class _IosAppScreen extends StatelessWidget {
  final Map<String, WidgetBuilder> routes;

  const _IosAppScreen({
    Key? key,
    required this.routes,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      routes: routes,
      theme: CupertinoThemeData(),
    );
  }
}
