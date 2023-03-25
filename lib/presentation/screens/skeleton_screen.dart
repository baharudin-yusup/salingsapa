import 'dart:io';

import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:salingsapa/domain/entities/auth_status.dart';
import 'package:salingsapa/presentation/blocs/account/account_bloc.dart';
import 'package:salingsapa/presentation/blocs/authorization/authorization_bloc.dart';
import 'package:salingsapa/presentation/screens/home/contact_list_screen.dart';
import 'package:salingsapa/presentation/screens/onboarding_screen.dart';
import 'package:salingsapa/presentation/screens/setting_screen.dart';
import 'package:salingsapa/presentation/screens/setup_screen.dart';
import 'package:salingsapa/presentation/screens/verify_otp_screen.dart';
import 'package:salingsapa/presentation/screens/video_call_screen.dart';
import 'package:salingsapa/presentation/services/navigator_service.dart';

import '../../injection_container.dart';
import '../blocs/contact_list/contact_list_bloc.dart';
import '../blocs/home/home_cubit.dart';
import '../blocs/recent_call/recent_call_bloc.dart';
import '../blocs/setup/setup_bloc.dart';
import '../services/notification_service.dart';
import 'home/home_screen.dart';
import 'home/recent_call_screen.dart';

class RootScreen extends StatefulWidget {
  static const routeName = '/';

  const RootScreen({Key? key}) : super(key: key);

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      final NotificationService service = sl();
      await service.requestPermission();
      await service.init();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthorizationBloc>(create: (_) => sl()),
        BlocProvider<SetupBloc>(create: (_) => sl()),
      ],
      child: _rootScreen,
    );
  }

  Map<String, WidgetBuilder> get _routes => {
        RecentCallScreen.routeName: (_) => const RecentCallScreen(),
        RootScreen.routeName: (context) => context
            .read<AuthorizationBloc>()
            .state
            .when(
              initial: () => const OnboardingScreen(),
              changeAuthStatusSuccess: (status) => status ==
                      AuthStatus.authorized
                  ? MultiBlocProvider(
                      providers: [
                        BlocProvider<HomeCubit>(create: (_) => HomeCubit()),
                        BlocProvider<RecentCallBloc>(
                            create: (_) =>
                                sl()..add(const RecentCallEvent.started())),
                        BlocProvider<ContactListBloc>(
                            create: (_) => sl()
                              ..add(const ContactListEvent.refreshPulled())),
                        BlocProvider<AccountBloc>(
                            create: (_) =>
                                sl()..add(const AccountEvent.started()))
                      ],
                      child: const HomeScreen(),
                    )
                  : const SetupScreen(),
              changeAuthStatusFailure: (_) => const SetupScreen(),
            ),
        SettingScreen.routeName: (_) => const SettingScreen(),
        VideoCallScreen.routeName: (_) => const VideoCallScreen(),
        VerifyOtpScreen.routeName: (_) => const VerifyOtpScreen(),
        SetupScreen.routeName: (_) => const SetupScreen(),
        ContactListScreen.routeName: (_) => BlocProvider<ContactListBloc>(
              create: (_) => sl()..add(const ContactListEvent.refreshPulled()),
              child: const ContactListScreen(),
            ),
      };

  Widget get _rootScreen {
    if (Platform.isIOS) {
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
    return DynamicColorBuilder(
      builder: (lightDynamic, darkDynamic) {
        lightDynamic ??= ColorScheme.fromSeed(
            seedColor: Colors.green, brightness: Brightness.light);
        darkDynamic ??= ColorScheme.fromSeed(
            seedColor: Colors.green, brightness: Brightness.light);
        return MaterialApp(
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          navigatorKey: sl<NavigatorService>().navigatorKey,
          debugShowCheckedModeBanner: false,
          routes: routes,
          theme: ThemeData(
            colorScheme: lightDynamic,
            useMaterial3: true,
          ),
          darkTheme: ThemeData(
            colorScheme: darkDynamic,
            useMaterial3: true,
          ),
        );
      },
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
    return DynamicColorBuilder(
      builder: (lightDynamic, darkDynamic) {
        lightDynamic ??= ColorScheme.fromSeed(
            seedColor: Colors.green, brightness: Brightness.light);
        darkDynamic ??= ColorScheme.fromSeed(
            seedColor: Colors.green, brightness: Brightness.light);
        return CupertinoApp(
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          navigatorKey: sl<NavigatorService>().navigatorKey,
          debugShowCheckedModeBanner: false,
          routes: routes,
        );
      },
    );
  }
}
