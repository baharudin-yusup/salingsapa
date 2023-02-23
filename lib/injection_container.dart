import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:rxdart/rxdart.dart';
import 'package:salingsapa/data/repositories/authentication_repository_impl.dart';
import 'package:salingsapa/data/sources/authentication_local_data_source.dart';
import 'package:salingsapa/data/sources/authentication_remote_data_source.dart';
import 'package:salingsapa/data/sources/contact_local_data_source.dart';
import 'package:salingsapa/domain/repositories/authentication_repository.dart';
import 'package:salingsapa/domain/repositories/contact_repository.dart';
import 'package:salingsapa/domain/usecases/authorization_status.dart';
import 'package:salingsapa/domain/usecases/has_permission.dart';
import 'package:salingsapa/domain/usecases/refresh_contact_list.dart';
import 'package:salingsapa/domain/usecases/request_permission.dart';
import 'package:salingsapa/domain/usecases/start_video_call.dart';
import 'package:salingsapa/domain/usecases/verify_otp.dart';
import 'package:salingsapa/domain/usecases/verify_phone_number.dart';
import 'package:salingsapa/presentation/blocs/authorization/authorization_bloc.dart';
import 'package:salingsapa/presentation/blocs/contact_list/contact_list_bloc.dart';
import 'package:salingsapa/presentation/blocs/setup/setup_bloc.dart';
import 'package:salingsapa/presentation/services/navigator_service.dart';
import 'package:salingsapa/presentation/services/notification_service.dart';
import 'package:salingsapa/presentation/services/ui_service.dart';

import 'data/repositories/contact_repository_impl.dart';
import 'domain/usecases/sign_out.dart';

final sl = GetIt.instance;

bool _isInitialized = false;

Future<void> setup() async {
  if (_isInitialized) {
    return;
  } else {
    _isInitialized = true;
  }

  /// Standard BLoC
  sl.registerFactory(() => ContactListBloc(sl(), sl(), sl(), sl()));

  /// Singleton BLoC
  sl.registerLazySingleton(() => AuthorizationBloc(sl()));
  sl.registerLazySingleton(() => SetupBloc(sl(), sl()));

  /// Use cases
  sl.registerLazySingleton(() => VerifyPhoneNumber(sl()));
  sl.registerLazySingleton(() => VerifyOtp(sl()));
  sl.registerLazySingleton(() => SignOut(sl()));
  sl.registerLazySingleton(() => GetAuthStatus(sl()));
  sl.registerLazySingleton(() => RefreshContactList(sl()));
  sl.registerLazySingleton(() => StartVideoCall());
  sl.registerLazySingleton(() => HasPermission());
  sl.registerLazySingleton(() => RequestPermission());

  /// Repositories
  sl.registerLazySingleton<AuthenticationRepository>(
      () => AuthenticationRepositoryImpl(sl(), sl(), BehaviorSubject()));
  sl.registerLazySingleton<ContactRepository>(
      () => ContactRepositoryImpl(sl()));

  /// Data sources
  sl.registerLazySingleton<AuthenticationLocalDataSource>(
      () => AuthenticationLocalDataSourceImpl(sl()));
  sl.registerLazySingleton<AuthenticationRemoteDatSource>(
      () => AuthenticationRemoteDatSourceImpl(FirebaseAuth.instance));
  sl.registerLazySingleton<ContactLocalDataSource>(
      () => ContactLocalDataSourceImpl());

  /// Services
  sl.registerLazySingleton<NavigatorService>(() => NavigatorServiceImpl());
  sl.registerLazySingleton<NotificationService>(() => NotificationServiceImpl(
      FirebaseMessaging.instance, FlutterLocalNotificationsPlugin()));
  sl.registerLazySingleton<UiService>(() => UiServiceImpl(sl()));

  /// External plugin
  sl.registerLazySingleton(() => const FlutterSecureStorage());
  // sl.registerLazySingleton(() => FirebaseMessaging.instance);
  // sl.registerLazySingleton(() => FlutterLocalNotificationsPlugin());

  /// Post Creation
  await sl<AuthenticationRepository>().init();
  FlutterNativeSplash.remove();
}
