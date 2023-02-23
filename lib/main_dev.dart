import 'dart:convert';

import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:salingsapa/presentation/screens/skeleton_screen.dart';

import 'core/utils/logger.dart';
import 'firebase_options_dev.dart';
import 'injection_container.dart' as di;

Future<void> main() async {
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await FirebaseAppCheck.instance.activate(
    // Default provider for Android is the Play Integrity provider. You can use the "AndroidProvider" enum to choose
    // your preferred provider. Choose from:
    // 1. debug provider
    // 2. safety net provider
    // 3. play integrity provider
    androidProvider: AndroidProvider.playIntegrity,
  );
  FirebaseMessaging.onBackgroundMessage(handleBackgroundNotification);

  await di.setup();
  runApp(const RootScreen());
}

@pragma('vm:entry-point')
Future<void> handleBackgroundNotification(RemoteMessage message) async {
  Logger.print("Handling a background message");
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
