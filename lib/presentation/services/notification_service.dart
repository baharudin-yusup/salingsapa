import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:salingsapa/core/errors/failures.dart';
import 'package:salingsapa/core/utils/logger.dart';
import 'package:salingsapa/presentation/screens/home/recent_call_screen.dart';
import 'package:salingsapa/presentation/screens/skeleton_screen.dart';
import 'package:salingsapa/presentation/screens/video_call_screen.dart';
import 'package:salingsapa/presentation/services/navigator_service.dart';

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
  }

  @override
  Future<void> open() {
    // TODO: implement open
    throw UnimplementedError();
  }

  @override
  Future<void> show(RemoteMessage message) async {
    Logger.print('Show notification started...');

    final notification = message.notification;

    if (notification == null) {
      return;
    }
    _localNotificationsPlugin.show(
      message.hashCode,
      notification.titleLocKey,
      notification.body,
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
        badge: true,
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
      Logger.print('Handle in the foreground...');
      Logger.print('Message data: ${message.data}');
      Logger.print('Notification data: ${message.notification?.toMap()}');
      show(message);
    });
  }
}

void openNotification(NotificationResponse? details) {
  try {
    final NavigatorService navigatorService = sl();
    navigatorService.pushNamed(RootScreen.routeName);
  } catch (error) {
    Logger.error(error, event: 'opening notification');
  }
}

void openNotificationB(NotificationResponse? details) {
  try {
    final NavigatorService navigatorService = sl();
    navigatorService.pushNamed(RecentCallScreen.routeName);
  } catch (error) {
    Logger.error(error, event: 'opening notification');
  }
}

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
