import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

import '../../core/errors/failure.dart';
import '../../core/firebase_options.dart';
import '../../core/utils/logger.dart';

@pragma('vm:entry-point')
Future<void> handleBackgroundNotification(RemoteMessage message) async {
  try {
    await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform);
  } catch (error) {
    Logger.error(error, event: 'initializing firebase');
  }

  Logger.print('Handling a background message');
  Logger.print('Remote message >>>: ${message.toMap()}');
}

abstract class NotificationService {
  Future<void> init();

  Future<void> open();

  Future<Either<Failure, AuthorizationStatus>> requestPermission();

  Future<String?> getToken();

  Stream<String> get onTokenChanges;
}

class NotificationServiceImpl implements NotificationService {
  final FirebaseMessaging _firebaseMessaging;
  final FlutterLocalNotificationsPlugin _localNotificationsPlugin;

  NotificationServiceImpl(
      this._firebaseMessaging, this._localNotificationsPlugin);

  final AndroidNotificationChannel _notificationChannel =
      createLocalNotificationChannel();

  @override
  Future<void> init() async {
    await _initLocalNotification();

    _handleForegroundNotification();
    _setupInteractedMessage();
  }

  @override
  Future<void> open() {
    // TODO: implement open
    throw UnimplementedError();
  }

  // @override
  // Future<void> show(RemoteMessage message) async {
  //   Logger.print('Show notification started...');
  //
  //   final notification = message.notification;
  //
  //   if (notification == null) {
  //     return;
  //   }
  //   _localNotificationsPlugin.show(
  //     message.hashCode,
  //     notification.titleLocKey,
  //     notification.body,
  //     NotificationDetails(
  //       android: AndroidNotificationDetails(
  //         _localNotificationChannel.id,
  //         _localNotificationChannel.name,
  //         importance: _localNotificationChannel.importance,
  //       ),
  //     ),
  //     payload: jsonEncode(message.data),
  //   );
  // }

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
      return Left(UnknownFailure(createdAt: DateTime.now()));
    }
  }

  // It is assumed that all messages contain a data field with the key 'type'
  Future<void> _setupInteractedMessage() async {
    // Get any messages which caused the application to open from
    // a terminated state.
    FirebaseMessaging.instance.getInitialMessage().then((initialMessage) {
      // If the message also contains a data property with a "type" of "chat",
      // navigate to a chat screen
      if (initialMessage != null) {
        Logger.print('Handle initialMessage');
        handleRemoteMessage(initialMessage);
      }
    });

    // Also handle any interaction when the app is in the background via a
    // Stream listener
    FirebaseMessaging.onMessageOpenedApp.listen((message) {
      Logger.print('Handle onMessageOpenedApp');
      handleRemoteMessage(message);
    });
  }

  Future<void> _initLocalNotification() async {
    const androidSettings =
        AndroidInitializationSettings('@drawable/ic_notification');
    const iosSettings = DarwinInitializationSettings();

    final notificationAppLaunchDetails =
        await _localNotificationsPlugin.getNotificationAppLaunchDetails();
    final notificationResponse =
        notificationAppLaunchDetails?.notificationResponse;

    if ((notificationAppLaunchDetails?.didNotificationLaunchApp ?? false) &&
        notificationResponse != null) {
      handleLocalNotificationOnTap(notificationResponse);
    } else {
      await _localNotificationsPlugin.initialize(
        const InitializationSettings(
            android: androidSettings, iOS: iosSettings),
        onDidReceiveNotificationResponse: handleLocalNotificationOnTap,
        // onDidReceiveBackgroundNotificationResponse: handleLocalNotificationOnBackgroundTap,
      );

      await _localNotificationsPlugin
          .resolvePlatformSpecificImplementation<
              AndroidFlutterLocalNotificationsPlugin>()
          ?.createNotificationChannel(_notificationChannel);
    }
  }

  void _handleForegroundNotification() {
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      Logger.print('Handle in the foreground...');
      handleRemoteMessage(message);
      showLocalNotification(
          plugin: _localNotificationsPlugin, message: message);
    });
  }

  @override
  Future<String?> getToken() async {
    return await _firebaseMessaging.getToken();
  }

  @override
  Stream<String> get onTokenChanges => _firebaseMessaging.onTokenRefresh;
}

// void handleRemoteMessage(RemoteMessage message) {
//   Logger.print('Handle in the foreground...');
//   Logger.print('Message data: ${message.data}');
//   Logger.print('Notification data: ${message.notification?.toMap()}');
//   show(message);
// }

class RemoteMessageData {
  final String _type;

  RemoteMessageData({
    required String type,
  }) : _type = type;

  factory RemoteMessageData.fromJson(Map<String, dynamic> json) =>
      RemoteMessageData(type: json['type']);

  String get type => _type;
}

// @pragma('vm:entry-point')
// void handleLocalNotificationOnBackgroundTap(NotificationResponse details) {
//   Logger.print('Handle Local notification onBackground ==> ${details.payload}');
// }

void handleLocalNotificationOnTap(NotificationResponse details) {
  Logger.print('Handle Local notification onTap ==> ${details.payload}');
}

void handleRemoteMessage(RemoteMessage message) {
  Logger.print('Remote Message Data ==> ${message.data}');
  Logger.print(
      'Remote Message Notification ==> ${message.notification?.toMap()}');
}

AndroidNotificationChannel createLocalNotificationChannel() {
  const String notificationChannelId = 'salingsapa_notification_channel';
  const String notificationChannelName = 'Salingsapa notification';
  return const AndroidNotificationChannel(
    notificationChannelId,
    notificationChannelName,
    importance: Importance.max,
  );
}

void showLocalNotification({
  required FlutterLocalNotificationsPlugin plugin,
  required RemoteMessage message,
}) {
  final notification = message.notification;
  if (notification != null) {
    Logger.print('Show local notification started...');
    try {
      final channel = createLocalNotificationChannel();
      plugin.show(
        message.hashCode,
        notification.titleLocKey ?? notification.title,
        notification.bodyLocKey ?? notification.body,
        NotificationDetails(
          android: AndroidNotificationDetails(
            channel.id,
            channel.name,
            importance: channel.importance,
          ),
        ),
        payload: jsonEncode(message.data),
      );
      Logger.print('Show local notification success!');
    } catch (error) {
      Logger.error(error, event: 'showing local notification');
    }
  }
}
