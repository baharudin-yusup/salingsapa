import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

import '../../core/errors/failures.dart';
import '../../core/utils/logger.dart';

@pragma('vm:entry-point')
Future<void> handleBackgroundNotification(RemoteMessage message) async {
  Logger.print('Handling a background message');
  Logger.print('Message data: ${message.data}');
  Logger.print('Notification data: ${message.notification?.toMap()}');
  try {
    const localNotificationChannel = AndroidNotificationChannel(
      'styleup_notification_channel',
      'StyleUp Notifications',
      importance: Importance.max,
    );
    FlutterLocalNotificationsPlugin().show(
      message.hashCode,
      'Title from local',
      'Body from local',
      NotificationDetails(
        android: AndroidNotificationDetails(
          localNotificationChannel.id,
          localNotificationChannel.name,
          importance: localNotificationChannel.importance,
        ),
      ),
      payload: jsonEncode(message.data),
    );
  } catch (error) {
    Logger.error(error, event: 'opening notification');
  }
}

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
        onDidReceiveNotificationResponse: openNotification,
        onDidReceiveBackgroundNotificationResponse: openNotification,
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
  Logger.print('${details?.payload}');
}
