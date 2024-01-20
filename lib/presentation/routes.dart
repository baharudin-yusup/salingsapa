import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../domain/entities/auth_status.dart';
import '../domain/entities/contact.dart';
import '../domain/entities/room.dart';
import '../injection_container.dart';
import 'blocs/account/account_bloc.dart';
import 'blocs/authorization/authorization_bloc.dart';
import 'blocs/contact_list/contact_list_bloc.dart';
import 'blocs/create_room/create_room_bloc.dart';
import 'blocs/home/home_cubit.dart';
import 'blocs/introduction/introduction_cubit.dart';
import 'blocs/recent_call/recent_call_bloc.dart';
import 'blocs/sign_language_recognition_bloc/sign_language_recognition_bloc.dart';
import 'blocs/speech_recognition_bloc/speech_recognition_bloc.dart';
import 'blocs/video_call/video_call_bloc.dart';
import 'blocs/video_call_caption/video_call_caption_bloc.dart';
import 'blocs/video_call_control/video_call_control_bloc.dart';
import 'screens/home/contact_list_screen.dart';
import 'screens/home/home_screen.dart';
import 'screens/home/recent_call_screen.dart';
import 'screens/onboarding_screen.dart';
import 'screens/room/create_room_screen.dart';
import 'screens/setting_screen.dart';
import 'screens/setup_screen.dart';
import 'screens/verify_otp_screen.dart';
import 'screens/video_call/video_call_screen.dart';

Map<String, WidgetBuilder> getRoutes() => {
      '/': (_) => BlocBuilder<AuthorizationBloc, AuthorizationState>(
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
                          create: (_) => sl()
                            ..add(const ContactListEvent.refreshPulled())),
                      BlocProvider<AccountBloc>(
                          create: (_) =>
                              sl()..add(const AccountEvent.started())),
                      BlocProvider<ContactListBloc>(
                          create: (_) => sl()
                            ..add(const ContactListEvent.refreshPulled())),
                    ],
                    child: const HomeScreen(),
                  );
                },
                changeAuthStatusFailure: (_) => const SetupScreen(),
              );
            },
          ),
      RecentCallScreen.routeName: (_) => const RecentCallScreen(),
      SettingScreen.routeName: (_) => const SettingScreen(),
      CreateRoomScreen.routeName: (context) {
        final contact = ModalRoute.of(context)!.settings.arguments as Contact;
        return BlocProvider<CreateRoomBloc>(
          create: (_) => CreateRoomBloc(sl(), contact: contact),
          child: const CreateRoomScreen(),
        );
      },
      VideoCallScreen.routeName: (context) {
        final room = ModalRoute.of(context)!.settings.arguments as Room;
        return MultiBlocProvider(
          providers: [
            BlocProvider<VideoCallBloc>(
                create: (_) => VideoCallBloc(sl(), sl(), sl(), sl(), sl(), sl(),
                    room: room)),
            BlocProvider<SpeechRecognitionBloc>(
                create: (_) =>
                    sl()..add(const SpeechRecognitionEvent.started())),
            BlocProvider<SignLanguageRecognitionBloc>(create: (_) => sl()),
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
