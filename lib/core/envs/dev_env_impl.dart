import 'env.dart';

class DevEnv implements Env {
  @override
  String get baseUrl => 'https://us-central1-salingsapa-project.cloudfunctions.net/app';
}
