import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../core/utils/logger.dart';
import '../../domain/entities/auth_status.dart';
import '../../env.dart';
import '../../injection_container.dart';
import '../blocs/account/account_bloc.dart';
import '../blocs/authorization/authorization_bloc.dart';
import '../blocs/contact_list/contact_list_bloc.dart';
import '../blocs/open_external_link/open_external_link_bloc.dart';
import '../blocs/setup/setup_bloc.dart';
import '../routes.dart';
import '../services/navigator_service.dart';
import '../services/notification_service.dart';
import '../services/platform_service.dart';
import '../services/ui_service.dart';
import '../utils/app_localizations.dart';
import '../utils/failure_translation.dart';

void createApp() {
  runApp(
    RootScreen(
      showDebugBanner: Env.environment != EnvironmentState.prod,
    ),
  );
}

class RootScreen extends StatefulWidget {
  static const routeName = '/';
  final bool showDebugBanner;

  const RootScreen({
    super.key,
    this.showDebugBanner = false,
  });

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  late Brightness platformBrightness;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      final NotificationService notificationService = sl();
      await notificationService.requestPermission();
      await notificationService.init();
    });
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    platformBrightness = MediaQuery.of(context).platformBrightness;
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthorizationBloc>(create: (_) => sl()),
        BlocProvider<SetupBloc>(create: (_) => sl()),
        BlocProvider<ContactListBloc>(create: (_) => sl()),
        BlocProvider<OpenExternalLinkBloc>(create: (_) => sl()),
        BlocProvider<AccountBloc>(create: (_) => sl()),
      ],
      child: BlocListener<AuthorizationBloc, AuthorizationState>(
        listenWhen: (previous, current) {
          final isFailure = current.maybeMap(
            changeAuthStatusFailure: (_) => true,
            orElse: () => false,
          );
          if (isFailure) {
            return true;
          }

          final prevState = previous.when(
            initial: (status) => status,
            changeAuthStatusSuccess: (status) => status,
            changeAuthStatusFailure: (_) => null,
          );

          final currentState = current.when(
            initial: (status) => status,
            changeAuthStatusSuccess: (status) => status,
            changeAuthStatusFailure: (_) => null,
          );

          final isNewState = prevState != currentState;
          Logger.print(
              '(skeleton screen) is new auth state? ${isNewState ? 'yes' : 'no'}');
          if (isNewState) {
            Logger.print(
                'previous state is $prevState and current state is $currentState');
            return true;
          }

          return false;
        },
        listener: (context, state) {
          final NavigatorService navigatorService = sl();
          final UiService uiService = sl();
          state.map(
            initial: (state) {},
            changeAuthStatusSuccess: (state) {
              context
                  .read<SetupBloc>()
                  .add(const SetupEvent.clearSetupStarted());
              uiService.resetLoading();

              switch (state.status) {
                case AuthStatus.unknown:
                case AuthStatus.unauthorized:
                  Logger.print('open setup screen started...');
                  navigatorService.pushNamedAndRemoveUntil(
                    RootScreen.routeName,
                    (route) => false,
                    arguments: false,
                  );
                  break;
                case AuthStatus.authorized:
                  Logger.print('open home screen started...');
                  navigatorService.pushNamedAndRemoveUntil(
                    RootScreen.routeName,
                    (route) => false,
                    arguments: true,
                  );
                  break;
              }
            },
            changeAuthStatusFailure: (state) {
              Fluttertoast.showToast(
                  msg: state.failure.code.translate(context));
              context
                  .read<SetupBloc>()
                  .add(const SetupEvent.clearSetupStarted());
              uiService.resetLoading();

              navigatorService.pushNamedAndRemoveUntil(
                  RootScreen.routeName, (route) => false);
            },
          );
        },
        child: sl<PlatformService>().os == PlatformOS.iOS
            ? Builder(
                builder: (context) {
                  final colorScheme = ColorScheme.fromSeed(
                    seedColor: Colors.blue,
                    brightness: platformBrightness,
                  );
                  return Material(
                    child: Theme(
                      data: ThemeData(
                        colorScheme: colorScheme,
                        useMaterial3: true,
                      ),
                      child: CupertinoApp(
                        localizationsDelegates:
                            AppLocalizations.localizationsDelegates,
                        supportedLocales: AppLocalizations.supportedLocales,
                        navigatorKey: sl<NavigatorService>().navigatorKey,
                        debugShowCheckedModeBanner: widget.showDebugBanner,
                        theme: CupertinoThemeData(
                          brightness: platformBrightness,
                          scaffoldBackgroundColor: colorScheme.surface,
                          primaryColor: colorScheme.primary,
                          primaryContrastingColor: colorScheme.onPrimary,
                          applyThemeToAll: true,
                        ),
                        onGenerateRoute: onGenerateRoute,
                      ),
                    ),
                  );
                },
              )
            : DynamicColorBuilder(
                builder: (lightDynamic, darkDynamic) {
                  lightDynamic ??= ColorScheme.fromSeed(
                      seedColor: Colors.blue, brightness: Brightness.light);
                  darkDynamic ??= ColorScheme.fromSeed(
                      seedColor: Colors.blue, brightness: Brightness.dark);
                  return MaterialApp(
                    localizationsDelegates:
                        AppLocalizations.localizationsDelegates,
                    supportedLocales: AppLocalizations.supportedLocales,
                    navigatorKey: sl<NavigatorService>().navigatorKey,
                    debugShowCheckedModeBanner: widget.showDebugBanner,
                    onGenerateRoute: onGenerateRoute,
                    theme: ThemeData(
                      colorScheme: lightDynamic,
                      useMaterial3: true,
                    ),
                    darkTheme: ThemeData(
                      colorScheme: darkDynamic,
                      useMaterial3: true,
                    ),
                    themeMode: ThemeMode.system,
                  );
                },
              ),
      ),
    );
  }
}
