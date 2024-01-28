import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/widgets.dart';

import 'core/envs/prod_env_impl.dart';
import 'firebase_options_prod.dart';
import 'firebase_setup.dart';
import 'injection_container.dart' as di;
import 'presentation/screens/skeleton_screen.dart';
import 'presentation/services/notification_service.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await setupFirebase(options: DefaultFirebaseOptions.currentPlatform);
  FirebaseMessaging.onBackgroundMessage(handleBackgroundNotification);

  final env = ProdEnv();
  await di.setup(env);
  createApp(env);
}
