import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:image_picker/image_picker.dart';
import 'package:rxdart/rxdart.dart';
import 'package:salingsapa/core/envs/env.dart';
import 'package:salingsapa/data/repositories/authentication_repository_impl.dart';
import 'package:salingsapa/data/repositories/setting_repository_impl.dart';
import 'package:salingsapa/data/repositories/user_repository_impl.dart';
import 'package:salingsapa/data/repositories/video_call_repository_impl.dart';
import 'package:salingsapa/data/sources/authentication_local_data_source.dart';
import 'package:salingsapa/data/sources/authentication_remote_data_source.dart';
import 'package:salingsapa/data/sources/contact_local_data_source.dart';
import 'package:salingsapa/data/sources/contact_remote_data_source.dart';
import 'package:salingsapa/data/sources/setting_local_data_source.dart';
import 'package:salingsapa/data/sources/user_remote_data_source.dart';
import 'package:salingsapa/data/sources/video_call_local_data_source.dart';
import 'package:salingsapa/data/sources/video_call_remote_data_source.dart';
import 'package:salingsapa/domain/repositories/authentication_repository.dart';
import 'package:salingsapa/domain/repositories/contact_repository.dart';
import 'package:salingsapa/domain/repositories/setting_repository.dart';
import 'package:salingsapa/domain/repositories/user_repository.dart';
import 'package:salingsapa/domain/repositories/video_call_repository.dart';
import 'package:salingsapa/domain/usecases/authorization_status.dart';
import 'package:salingsapa/domain/usecases/flip_video_call_camera.dart';
import 'package:salingsapa/domain/usecases/get_current_user.dart';
import 'package:salingsapa/domain/usecases/get_recent_call.dart';
import 'package:salingsapa/domain/usecases/get_video_call_engine.dart';
import 'package:salingsapa/domain/usecases/has_permission.dart';
import 'package:salingsapa/domain/usecases/init_video_call.dart';
import 'package:salingsapa/domain/usecases/is_first_launch_app.dart';
import 'package:salingsapa/domain/usecases/join_video_call.dart';
import 'package:salingsapa/domain/usecases/leave_video_call.dart';
import 'package:salingsapa/domain/usecases/mute_video_call_audio.dart';
import 'package:salingsapa/domain/usecases/mute_video_call_video.dart';
import 'package:salingsapa/domain/usecases/refresh_contact_list.dart';
import 'package:salingsapa/domain/usecases/request_permission.dart';
import 'package:salingsapa/domain/usecases/set_is_first_launch_app.dart';
import 'package:salingsapa/domain/usecases/start_video_call.dart';
import 'package:salingsapa/domain/usecases/stream_current_user.dart';
import 'package:salingsapa/domain/usecases/stream_video_call_invitations.dart';
import 'package:salingsapa/domain/usecases/stream_video_call_status.dart';
import 'package:salingsapa/domain/usecases/update_name.dart';
import 'package:salingsapa/domain/usecases/update_video_call_remote_user_status.dart';
import 'package:salingsapa/domain/usecases/verify_otp.dart';
import 'package:salingsapa/domain/usecases/verify_phone_number.dart';
import 'package:salingsapa/presentation/blocs/account/account_bloc.dart';
import 'package:salingsapa/presentation/blocs/authorization/authorization_bloc.dart';
import 'package:salingsapa/presentation/blocs/contact_list/contact_list_bloc.dart';
import 'package:salingsapa/presentation/blocs/introduction/introduction_cubit.dart';
import 'package:salingsapa/presentation/blocs/recent_call/recent_call_bloc.dart';
import 'package:salingsapa/presentation/blocs/setup/setup_bloc.dart';
import 'package:salingsapa/presentation/blocs/video_call/video_call_bloc.dart';
import 'package:salingsapa/presentation/blocs/video_call_control/video_call_control_bloc.dart';
import 'package:salingsapa/presentation/services/navigator_service.dart';
import 'package:salingsapa/presentation/services/notification_service.dart';
import 'package:salingsapa/presentation/services/ui_service.dart';
import 'package:uuid/uuid.dart';

import 'data/repositories/contact_repository_impl.dart';
import 'domain/usecases/sign_out.dart';
import 'domain/usecases/update_profile_picture.dart';

final sl = GetIt.instance;

bool _isInitialized = false;

Future<void> setup(Env env) async {
  if (_isInitialized) {
    return;
  } else {
    _isInitialized = true;
  }

  /// Services
  sl.registerLazySingleton<NavigatorService>(() => NavigatorServiceImpl());
  sl.registerLazySingleton<NotificationService>(() => NotificationServiceImpl(
      FirebaseMessaging.instance, FlutterLocalNotificationsPlugin()));
  sl.registerLazySingleton<UiService>(() => UiServiceImpl(sl()));

  /// Standard BLoC
  sl.registerFactory(() => IntroductionCubit(sl(), sl(), sl()));
  sl.registerFactory(() => RecentCallBloc(sl(), sl(), sl()));
  sl.registerFactory(
      () => AccountBloc(sl(), sl(), sl(), sl(), sl(), sl(), sl()));
  sl.registerFactory(
      () => VideoCallBloc(sl(), sl(), sl(), sl(), sl(), sl(), sl()));
  sl.registerFactory(() => VideoCallControlBloc(sl(), sl(), sl()));

  /// Singleton BLoC
  sl.registerLazySingleton(() => ContactListBloc(sl(), sl(), sl(), sl(), sl()));
  sl.registerLazySingleton(() => AuthorizationBloc(sl(), sl()));
  sl.registerFactory(() => SetupBloc(sl(), sl()));

  /// Use cases
  sl.registerLazySingleton(() => VerifyPhoneNumber(sl()));
  sl.registerLazySingleton(() => VerifyOtp(sl()));
  sl.registerLazySingleton(() => SignOut(sl()));
  sl.registerLazySingleton(() => GetAuthStatus(sl()));
  sl.registerLazySingleton(() => RefreshContactList(sl()));

  sl.registerLazySingleton(() => InitVideoCall(sl()));
  sl.registerLazySingleton(() => StartVideoCall(sl()));
  sl.registerLazySingleton(() => JoinVideoCall(sl()));
  sl.registerLazySingleton(() => LeaveVideoCall(sl()));
  sl.registerLazySingleton(() => GetVideoCallEngine(sl()));
  sl.registerLazySingleton(() => StreamVideoCallStatus(sl()));
  sl.registerLazySingleton(() => StreamVideoCallInvitations(sl()));
  sl.registerLazySingleton(() => FlipVideoCallCamera(sl()));
  sl.registerLazySingleton(() => MuteVideoCallAudio(sl()));
  sl.registerLazySingleton(() => MuteVideoCallVideo(sl()));
  sl.registerLazySingleton(() => UpdateVideoCallRemoteUserStatus(sl()));

  sl.registerLazySingleton(() => const HasPermission());
  sl.registerLazySingleton(() => const RequestPermission());
  sl.registerLazySingleton(() => IsFirstLaunchApp(sl()));
  sl.registerLazySingleton(() => SetIsFirstLaunchApp(sl()));
  sl.registerLazySingleton(() => GetRecentCall());
  sl.registerLazySingleton(() => UpdateName(sl()));
  sl.registerLazySingleton(() => StreamCurrentUser(sl()));
  sl.registerLazySingleton(() => UpdateProfilePicture(sl()));
  sl.registerLazySingleton(() => GetCurrentUser(sl()));

  /// Repositories
  sl.registerLazySingleton<AuthenticationRepository>(
      () => AuthenticationRepositoryImpl(sl(), sl(), BehaviorSubject()));
  sl.registerLazySingleton<ContactRepository>(
      () => ContactRepositoryImpl(sl(), sl()));
  sl.registerLazySingleton<SettingRepository>(
      () => SettingRepositoryImpl(sl()));
  sl.registerLazySingleton<UserRepository>(() => UserRepositoryImpl(sl()));
  sl.registerLazySingleton<VideoCallRepository>(
      () => VideoCallRepositoryImpl(sl(), sl()));

  /// Data sources
  sl.registerLazySingleton<AuthenticationLocalDataSource>(
      () => AuthenticationLocalDataSourceImpl(sl()));
  sl.registerLazySingleton<AuthenticationRemoteDatSource>(
      () => AuthenticationRemoteDatSourceImpl(sl(), sl()));
  sl.registerLazySingleton<ContactLocalDataSource>(
      () => ContactLocalDataSourceImpl());
  sl.registerLazySingleton<SettingLocalDataSource>(
      () => SettingLocalDataSourceImpl(sl()));
  sl.registerLazySingleton<UserRemoteDataSource>(
      () => UserRemoteDataSourceImpl(sl(), sl(), sl()));
  sl.registerLazySingleton<ContactRemoteDataSource>(
      () => ContactRemoteDataSourceImpl(sl(), sl()));
  sl.registerLazySingleton<VideoCallLocalDataSource>(
      () => VideoCallLocalDataSourceImpl());
  sl.registerLazySingleton<VideoCallRemoteDataSource>(
      () => VideoCallRemoteDataSourceImpl(sl(), sl(), sl(), sl()));

  /// External plugin
  final auth = FirebaseAuth.instance;
  final firestore = FirebaseFirestore.instance;
  final storage = FirebaseStorage.instance;
  final remoteConfig = FirebaseRemoteConfig.instance;
  final imagePicker = ImagePicker();
  const uuid = Uuid();
  const secureStorage = FlutterSecureStorage();

  sl.registerLazySingleton(() => secureStorage);
  // sl.registerLazySingleton(() => FirebaseMessaging.instance);
  // sl.registerLazySingleton(() => FlutterLocalNotificationsPlugin());
  sl.registerLazySingleton(() => env);
  sl.registerLazySingleton(() => auth);
  sl.registerLazySingleton(() => firestore);
  sl.registerLazySingleton(() => storage);
  sl.registerLazySingleton(() => remoteConfig);
  sl.registerLazySingleton(() => imagePicker);
  sl.registerLazySingleton(() => uuid);

  /// Post Creation
  final authorizationBloc = sl<AuthorizationBloc>();
  final settingRepository = sl<SettingRepository>();
  final authenticationRepository = sl<AuthenticationRepository>();

  await remoteConfig.setConfigSettings(RemoteConfigSettings(
    fetchTimeout: const Duration(minutes: 1),
    minimumFetchInterval: const Duration(hours: 1),
  ));
  await authenticationRepository.init();

  final isFirstLaunchApp =
      (await settingRepository.getIsFirstLaunchApp()).getOrElse(() => true);
  if (!isFirstLaunchApp) {
    final latestAuthStatus =
        await authenticationRepository.getLatestAuthStatus();
    latestAuthStatus.fold(
      (failure) => authorizationBloc
          .add(AuthorizationEvent.authStatusChanged(failure: failure)),
      (status) => authorizationBloc
          .add(AuthorizationEvent.authStatusChanged(status: status)),
    );
  }
  FlutterNativeSplash.remove();
}
