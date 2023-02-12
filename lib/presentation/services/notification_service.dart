import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:saling_sapa/core/errors/failures.dart';
import 'package:saling_sapa/core/utils/logger.dart';
import 'package:saling_sapa/presentation/screens/history_screen.dart';
import 'package:saling_sapa/presentation/screens/home_screen.dart';
import 'package:saling_sapa/presentation/screens/video_call_screen.dart';
import 'package:saling_sapa/presentation/services/navigator_service.dart';

import '../../injection_container.dart';
import '../screens/setting_screen.dart';

abstract class NotificationService {
  Future<void> init();

  Future<void> show(RemoteMessage message);

  Future<void> open();

  Future<Either<Failure, AuthorizationStatus>> requestPermission();
}

class NotificationServiceImpl implements NotificationService {
  final FirebaseMessaging _firebaseMessaging;
  final FlutterLocalNotificationsPlugin _localNotificationsPlugin;

  NotificationServiceImpl(
      this._firebaseMessaging, this._localNotificationsPlugin);

  AndroidNotificationChannel get _localNotificationChannel =>
      const AndroidNotificationChannel(
        'styleup_notification_channel',
        'StyleUp Notifications',
        importance: Importance.max,
      );

  @override
  Future<void> init() async {
    await _initToken();
    await _initLocalNotification();

    _handleForegroundNotification();

    _firebaseMessaging.getInitialMessage().then((message) {
      if (message != null) {
        const NotificationResponse? details = null;
        openNotificationD(details);
      }
    });
  }

  @override
  Future<void> open() {
    // TODO: implement open
    throw UnimplementedError();
  }

  @override
  Future<void> show(RemoteMessage message) async {
    _localNotificationsPlugin.show(
      message.hashCode,
      'Title from local',
      'Body from local',
      NotificationDetails(
        android: AndroidNotificationDetails(
          _localNotificationChannel.id,
          _localNotificationChannel.name,
          importance: _localNotificationChannel.importance,
        ),
      ),
      payload: jsonEncode(message.data),
    );
  }

  @override
  Future<Either<Failure, AuthorizationStatus>> requestPermission() async {
    try {
      NotificationSettings settings =
          await _firebaseMessaging.requestPermission(
        alert: true,
        announcement: false,
        badge: true,
        carPlay: false,
        criticalAlert: false,
        provisional: false,
        sound: true,
      );

      final status = settings.authorizationStatus;
      return Right(status);
    } catch (error) {
      return Left(UnknownFailure());
    }
  }

  Future<void> _initToken() async {
    final fcmToken = await _firebaseMessaging.getToken();
    Logger.print('FCM token: $fcmToken');
  }

  Future<void> _initLocalNotification() async {
    const androidSettings =
        AndroidInitializationSettings('@drawable/ic_notification');
    const iosSettings = DarwinInitializationSettings();

    final notificationAppLaunchDetails =
        await _localNotificationsPlugin.getNotificationAppLaunchDetails();

    if (notificationAppLaunchDetails?.didNotificationLaunchApp ?? false) {
      openNotification(notificationAppLaunchDetails!.notificationResponse);
    } else {
      await _localNotificationsPlugin.initialize(
        const InitializationSettings(
            android: androidSettings, iOS: iosSettings),
        onDidReceiveNotificationResponse: openNotificationB,
        onDidReceiveBackgroundNotificationResponse: openNotificationC,
      );

      await _localNotificationsPlugin
          .resolvePlatformSpecificImplementation<
              AndroidFlutterLocalNotificationsPlugin>()
          ?.createNotificationChannel(_localNotificationChannel);
    }
  }

  void _handleForegroundNotification() {
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      Logger.print('Got a message whilst in the foreground!');
      Logger.print('Message data: ${message.data}');

      if (message.notification != null) {
        Logger.print(
            'Message also contained a notification: ${message.notification}');
      }
      show(message);
    });
  }
}

@pragma('vm:entry-point')
void openNotification(NotificationResponse? details) {
  try {
    final NavigatorService navigatorService = sl();
    navigatorService.pushNamed(HomeScreen.routeName);
  } catch (error) {
    Logger.error(error, event: 'opening notification');
  }
}

@pragma('vm:entry-point')
void openNotificationB(NotificationResponse? details) {
  try {
    final NavigatorService navigatorService = sl();
    navigatorService.pushNamed(HistoryScreen.routeName);
  } catch (error) {
    Logger.error(error, event: 'opening notification');
  }
}

@pragma('vm:entry-point')
void openNotificationC(NotificationResponse? details) {
  try {
    final NavigatorService navigatorService = sl();
    navigatorService.pushNamed(SettingScreen.routeName);
  } catch (error) {
    Logger.error(error, event: 'opening notification');
  }
}

@pragma('vm:entry-point')
void openNotificationD(NotificationResponse? details) {
  try {
    final NavigatorService navigatorService = sl();
    navigatorService.pushNamed(VideoCallScreen.routeName);
  } catch (error) {
    Logger.error(error, event: 'opening notification');
  }
}
