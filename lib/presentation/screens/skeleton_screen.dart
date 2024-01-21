import 'dart:io';

import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../injection_container.dart';
import '../blocs/authorization/authorization_bloc.dart';
import '../blocs/contact_list/contact_list_bloc.dart';
import '../blocs/open_external_link/open_external_link_bloc.dart';
import '../blocs/setup/setup_bloc.dart';
import '../routes.dart';
import '../services/navigator_service.dart';
import '../services/notification_service.dart';

void createApp() {
  runApp(const RootScreen());
}

class RootScreen extends StatefulWidget {
  static const routeName = '/';

  const RootScreen({super.key});

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  late Brightness platformBrightness;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      final NotificationService navigatorService = sl();
      await navigatorService.requestPermission();
      await navigatorService.init();
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
      ],
      child: BlocListener<AuthorizationBloc, AuthorizationState>(
        listener: (context, state) {
          final NavigatorService navigatorService = sl();
          navigatorService.pushNamedAndRemoveUntil('/', (route) => false);
        },
        child: Platform.isIOS
            ? Builder(builder: (context) {
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
                      debugShowCheckedModeBanner: false,
                      theme: CupertinoThemeData(
                        brightness: platformBrightness,
                        scaffoldBackgroundColor: colorScheme.background,
                        primaryColor: colorScheme.primary,
                        primaryContrastingColor: colorScheme.onPrimary,
                        applyThemeToAll: true,
                      ),
                      routes: getRoutes(),
                      initialRoute: '/',
                    ),
                  ),
                );
              })
            : DynamicColorBuilder(builder: (lightDynamic, darkDynamic) {
                lightDynamic ??= ColorScheme.fromSeed(
                    seedColor: Colors.blue, brightness: Brightness.light);
                darkDynamic ??= ColorScheme.fromSeed(
                    seedColor: Colors.blue, brightness: Brightness.dark);
                return MaterialApp(
                  localizationsDelegates:
                      AppLocalizations.localizationsDelegates,
                  supportedLocales: AppLocalizations.supportedLocales,
                  navigatorKey: sl<NavigatorService>().navigatorKey,
                  debugShowCheckedModeBanner: false,
                  routes: getRoutes(),
                  theme: ThemeData(
                    colorScheme: lightDynamic,
                    useMaterial3: true,
                  ),
                  darkTheme: ThemeData(
                    colorScheme: darkDynamic,
                    useMaterial3: true,
                  ),
                  themeMode: ThemeMode.system,
                  initialRoute: '/',
                );
              }),
      ),
    );
  }
}
