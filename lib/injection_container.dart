import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get_it/get_it.dart';
import 'package:saling_sapa/data/repositories/authentication_repository_impl.dart';
import 'package:saling_sapa/data/sources/authentication_local_data_source.dart';
import 'package:saling_sapa/data/sources/authentication_remote_data_source.dart';
import 'package:saling_sapa/domain/repositories/authentication_repository.dart';
import 'package:saling_sapa/domain/usecases/verify_otp.dart';
import 'package:saling_sapa/domain/usecases/verify_phone_number.dart';
import 'package:saling_sapa/presentation/services/navigator_service.dart';
import 'package:saling_sapa/presentation/services/notification_service.dart';

import 'domain/usecases/sign_out.dart';

final sl = GetIt.instance;

bool _isInitialized = false;

void setup() {
  if (_isInitialized) {
    return;
  } else {
    _isInitialized = true;
  }

  /// Standard BLoC

  /// Singleton BLoC

  /// Use cases
  sl.registerLazySingleton(() => VerifyPhoneNumber(sl()));
  sl.registerLazySingleton(() => VerifyOtp(sl()));
  sl.registerLazySingleton(() => SignOut(sl()));

  /// Repositories
  sl.registerLazySingleton<AuthenticationRepository>(
      () => AuthenticationRepositoryImpl(sl(), sl()));

  /// Data sources
  sl.registerLazySingleton<AuthenticationLocalDataSource>(
      () => AuthenticationLocalDataSourceImpl());
  sl.registerLazySingleton<AuthenticationRemoteDatSource>(
      () => AuthenticationRemoteDatSourceImpl(FirebaseAuth.instance));

  /// Services
  sl.registerLazySingleton<NavigatorService>(() => NavigatorServiceImpl());
  sl.registerLazySingleton<NotificationService>(() => NotificationServiceImpl(
      FirebaseMessaging.instance, FlutterLocalNotificationsPlugin()));

  /// External plugin
  // sl.registerLazySingleton(() => FirebaseAuth.instance);
  // sl.registerLazySingleton(() => FirebaseMessaging.instance);
  // sl.registerLazySingleton(() => FlutterLocalNotificationsPlugin());
}
