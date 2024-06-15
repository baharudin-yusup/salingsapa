import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/widgets.dart';

import 'core/firebase_options.dart';
import 'core/injection_container.dart' as di;
import 'core/utils/logger.dart';
import 'presentation/screens/skeleton_screen.dart';
import 'presentation/services/notification_service.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  try {
    await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform);
  } catch (error) {
    Logger.error(error, event: 'initializing firebase');
  }

  await FirebaseAppCheck.instance.activate(
    androidProvider: AndroidProvider.playIntegrity,
  );

  FirebaseMessaging.onBackgroundMessage(handleBackgroundNotification);

  await di.setup();
  createApp();
}
