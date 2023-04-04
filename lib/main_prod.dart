import 'package:flutter/widgets.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import 'core/envs/prod_env_impl.dart';
import 'firebase_options_prod.dart';
import 'firebase_setup.dart';
import 'injection_container.dart' as di;
import 'presentation/screens/skeleton_screen.dart';

Future<void> main() async {
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  await setupFirebase(options: DefaultFirebaseOptions.currentPlatform);
  await di.setup(ProdEnv());

  createApp();
}
