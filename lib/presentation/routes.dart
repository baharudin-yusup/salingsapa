import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../core/utils/logger.dart';
import '../domain/entities/auth_status.dart';
import '../domain/entities/contact.dart';
import '../domain/entities/room.dart';
import '../injection_container.dart';
import 'blocs/account/account_bloc.dart';
import 'blocs/authorization/authorization_bloc.dart';
import 'blocs/contact_list/contact_list_bloc.dart';
import 'blocs/create_room/create_room_bloc.dart';
import 'blocs/home/home_cubit.dart';
import 'blocs/recent_call/recent_call_bloc.dart';
import 'blocs/sign_language_recognition_bloc/sign_language_recognition_bloc.dart';
import 'blocs/speech_recognition_bloc/speech_recognition_bloc.dart';
import 'blocs/video_call/video_call_bloc.dart';
import 'blocs/video_call_caption/video_call_caption_bloc.dart';
import 'blocs/video_call_control/video_call_control_bloc.dart';
import 'screens/account/account_setting.dart';
import 'screens/account/delete_account_screen.dart';
import 'screens/home/contact_list_screen.dart';
import 'screens/home/home_screen.dart';
import 'screens/home/recent_call_screen.dart';
import 'screens/room/create_room_screen.dart';
import 'screens/setting_screen.dart';
import 'screens/setup_screen.dart';
import 'screens/verify_otp_screen.dart';
import 'screens/video_call/video_call_screen.dart';

Widget _buildScreen({
  required String? routeName,
  Object? arguments,
  required BuildContext context,
}) {
  switch (routeName) {
    case VerifyOtpScreen.routeName:
      return const VerifyOtpScreen();
    case RecentCallScreen.routeName:
      return const RecentCallScreen();
    case SettingScreen.routeName:
      return const SettingScreen();
    case CreateRoomScreen.routeName:
      final contact = arguments as Contact;
      return BlocProvider<CreateRoomBloc>(
        create: (_) => CreateRoomBloc(sl(), contact: contact),
        child: const CreateRoomScreen(),
      );

    case VideoCallScreen.routeName:
      final room = arguments as Room;
      return MultiBlocProvider(
        providers: [
          BlocProvider<VideoCallBloc>(
              create: (_) => VideoCallBloc(sl(), sl(), sl(), sl(), sl(), sl(),
                  room: room)),
          BlocProvider<SpeechRecognitionBloc>(create: (_) => sl()),
          BlocProvider<SignLanguageRecognitionBloc>(create: (_) => sl()),
          BlocProvider<VideoCallControlBloc>(create: (_) => sl()),
          BlocProvider<VideoCallCaptionBloc>(create: (_) => sl()),
        ],
        child: const VideoCallScreen(),
      );

    case ContactListScreen.routeName:
      return const ContactListScreen();
    case AccountSettingScreen.routeName:
      return const AccountSettingScreen();
    case DeleteAccountScreen.routeName:
      return const DeleteAccountScreen();
    default:
      late final bool isLoggedIn;
      if (arguments != null && arguments is bool) {
        isLoggedIn = arguments;
      } else {
        isLoggedIn = context.read<AuthorizationBloc>().state.when(
              initial: (status) => status == AuthStatus.authorized,
              changeAuthStatusSuccess: (status) =>
                  status == AuthStatus.authorized,
              changeAuthStatusFailure: (_) => false,
            );
      }

      if (isLoggedIn) {
        context
            .read<ContactListBloc>()
            .add(const ContactListEvent.refreshPulled());
        context.read<AccountBloc>().add(const AccountEvent.started());

        Logger.print('Show HomeScreen');
        return MultiBlocProvider(
          providers: [
            BlocProvider<HomeCubit>(create: (_) => HomeCubit()),
            BlocProvider<RecentCallBloc>(
                create: (_) => sl()..add(const RecentCallEvent.started())),
          ],
          child: const HomeScreen(),
        );
      }

      Logger.print('Show SetupScreen');
      return const SetupScreen();
  }
}

Route onGenerateRoute(RouteSettings settings) {
  final routeName = settings.name;
  final arguments = settings.arguments;

  Logger.print('Opening $routeName screen started...');

  if (Platform.isIOS) {
    return CupertinoPageRoute(
        builder: (context) => _buildScreen(
            routeName: routeName, context: context, arguments: arguments));
  }

  return MaterialPageRoute(
      builder: (context) => _buildScreen(
          routeName: routeName, context: context, arguments: arguments));
}
