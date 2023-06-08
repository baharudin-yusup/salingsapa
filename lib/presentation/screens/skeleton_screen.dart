import 'dart:io';

import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../domain/entities/auth_status.dart';
import '../../domain/entities/contact.dart';
import '../../domain/entities/video_call_invitation.dart';
import '../../injection_container.dart';
import '../blocs/account/account_bloc.dart';
import '../blocs/authorization/authorization_bloc.dart';
import '../blocs/contact_list/contact_list_bloc.dart';
import '../blocs/home/home_cubit.dart';
import '../blocs/introduction/introduction_cubit.dart';
import '../blocs/recent_call/recent_call_bloc.dart';
import '../blocs/setup/setup_bloc.dart';
import '../blocs/sign_language_recognition_bloc/sign_language_recognition_bloc.dart';
import '../blocs/speech_recognition_bloc/speech_recognition_bloc.dart';
import '../blocs/video_call/video_call_bloc.dart';
import '../blocs/video_call_caption/video_call_caption_bloc.dart';
import '../blocs/video_call_control/video_call_control_bloc.dart';
import '../services/navigator_service.dart';
import '../services/notification_service.dart';
import 'home/contact_list_screen.dart';
import 'home/home_screen.dart';
import 'home/recent_call_screen.dart';
import 'onboarding_screen.dart';
import 'setting_screen.dart';
import 'setup_screen.dart';
import 'verify_otp_screen.dart';
import 'video_call/video_call_screen.dart';

void createApp() {
  runApp(const RootScreen());
}

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
        BlocProvider<ContactListBloc>(create: (_) => sl()),
      ],
      child: Platform.isIOS
          ? _IosAppScreen(routes: _routes, home: home)
          : _AndroidAppScreen(routes: _routes, home: home),
    );
  }

  Map<String, WidgetBuilder> get _routes => {
        RecentCallScreen.routeName: (_) => const RecentCallScreen(),
        SettingScreen.routeName: (_) => const SettingScreen(),
        VideoCallScreen.routeName: (context) {
          return MultiBlocProvider(
            providers: [
              BlocProvider<SpeechRecognitionBloc>(
                  create: (_) =>
                      sl()..add(const SpeechRecognitionEvent.started())),
              BlocProvider<SignLanguageRecognitionBloc>(create: (_) => sl()),
              BlocProvider<VideoCallBloc>(create: (_) {
                final VideoCallBloc bloc = sl();
                final argument = ModalRoute.of(context)!.settings.arguments;
                if (argument is VideoCallInvitation) {
                  return bloc
                    ..add(VideoCallEvent.setInvitationStarted(argument))
                    ..add(VideoCallEvent.joinVideoCallStarted(argument));
                } else if (argument is Contact) {
                  return bloc..add(VideoCallEvent.videoCallStarted(argument));
                } else {
                  return bloc;
                }
              }),
              BlocProvider<VideoCallControlBloc>(create: (_) => sl()),
              BlocProvider<VideoCallCaptionBloc>(create: (_) => sl()),
            ],
            child: const VideoCallScreen(),
          );
        },
        VerifyOtpScreen.routeName: (_) => const VerifyOtpScreen(),
        SetupScreen.routeName: (_) => const SetupScreen(),
        ContactListScreen.routeName: (_) => const ContactListScreen(),
      };

  Widget get home => BlocConsumer<AuthorizationBloc, AuthorizationState>(
        listener: (context, _) {
          Navigator.popUntil(
              context, (route) => route.settings.name == RootScreen.routeName);
        },
        builder: (context, state) {
          return state.when(
            initial: (_) => BlocProvider<IntroductionCubit>(
              create: (_) => sl(),
              child: const OnboardingScreen(),
            ),
            changeAuthStatusSuccess: (status) {
              if (status == AuthStatus.unauthorized) {
                return const SetupScreen();
              }

              context
                  .read<ContactListBloc>()
                  .add(const ContactListEvent.refreshPulled());

              return MultiBlocProvider(
                providers: [
                  BlocProvider<HomeCubit>(create: (_) => HomeCubit()),
                  BlocProvider<RecentCallBloc>(
                      create: (_) =>
                          sl()..add(const RecentCallEvent.started())),
                  BlocProvider<ContactListBloc>(
                      create: (_) =>
                          sl()..add(const ContactListEvent.refreshPulled())),
                  BlocProvider<AccountBloc>(
                      create: (_) => sl()..add(const AccountEvent.started())),
                  BlocProvider<ContactListBloc>(
                      create: (_) =>
                          sl()..add(const ContactListEvent.refreshPulled())),
                ],
                child: const HomeScreen(),
              );
            },
            changeAuthStatusFailure: (_) => const SetupScreen(),
          );
        },
      );
}

class _AndroidAppScreen extends StatelessWidget {
  final Map<String, WidgetBuilder> routes;
  final Widget home;

  const _AndroidAppScreen({
    Key? key,
    required this.routes,
    required this.home,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DynamicColorBuilder(
      builder: (lightDynamic, darkDynamic) {
        lightDynamic ??= ColorScheme.fromSeed(
            seedColor: Colors.green, brightness: Brightness.light);
        darkDynamic ??= ColorScheme.fromSeed(
            seedColor: Colors.green, brightness: Brightness.dark);
        return MaterialApp(
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          navigatorKey: sl<NavigatorService>().navigatorKey,
          debugShowCheckedModeBanner: false,
          routes: routes,
          theme: ThemeData(
            colorScheme: lightDynamic,
            brightness: Brightness.light,
            useMaterial3: true,
          ),
          darkTheme: ThemeData(
            colorScheme: darkDynamic,
            brightness: Brightness.dark,
            useMaterial3: true,
          ),
          home: home,
        );
      },
    );
  }
}

class _IosAppScreen extends StatelessWidget {
  final Map<String, WidgetBuilder> routes;
  final Widget home;

  const _IosAppScreen({
    Key? key,
    required this.routes,
    required this.home,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DynamicColorBuilder(
      builder: (lightDynamic, darkDynamic) {
        final brightness =
            View.of(context).platformDispatcher.platformBrightness;
        lightDynamic ??= ColorScheme.fromSeed(
          seedColor: Colors.green,
          brightness: Brightness.light,
          background: Colors.white,
        );
        darkDynamic ??= ColorScheme.fromSeed(
          seedColor: Colors.green,
          brightness: Brightness.dark,
        );

        return Material(
          child: Theme(
            data: brightness == Brightness.light
                ? ThemeData(
                    brightness: Brightness.light,
                    useMaterial3: true,
                    colorScheme: lightDynamic,
                  )
                : ThemeData(
                    brightness: Brightness.dark,
                    useMaterial3: true,
                    colorScheme: darkDynamic,
                  ),
            child: CupertinoApp(
              localizationsDelegates: AppLocalizations.localizationsDelegates,
              supportedLocales: AppLocalizations.supportedLocales,
              navigatorKey: sl<NavigatorService>().navigatorKey,
              debugShowCheckedModeBanner: false,
              theme: CupertinoThemeData(
                brightness: brightness,
                scaffoldBackgroundColor: brightness == Brightness.light
                    ? lightDynamic.background
                    : darkDynamic.background,
                primaryColor: brightness == Brightness.light
                    ? lightDynamic.primary
                    : darkDynamic.primary,
                primaryContrastingColor: brightness == Brightness.light
                    ? lightDynamic.onPrimary
                    : darkDynamic.onPrimary,
              ),
              routes: routes,
              home: home,
            ),
          ),
        );
      },
    );
  }
}
