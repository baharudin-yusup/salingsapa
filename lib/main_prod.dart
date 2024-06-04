import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/widgets.dart';

import 'firebase_options_prod.dart' as firebase_prod;
import 'firebase_setup.dart';
import 'injection_container.dart' as di;
import 'presentation/screens/skeleton_screen.dart';
import 'presentation/services/notification_service.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await setupFirebase(options: firebase_prod.DefaultFirebaseOptions.currentPlatform);
  FirebaseMessaging.onBackgroundMessage(handleBackgroundNotification);

  await di.setup();
  createApp();
}
