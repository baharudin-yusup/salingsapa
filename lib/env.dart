// abstract class Env {
//   String get baseUrl;
// }

import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(useConstantCase: true)
abstract class Env {
  @EnviedField()
  static const String _environment = _Env._environment;

  static EnvironmentState get environment {
    switch (_environment) {
      case 'dev':
        return EnvironmentState.dev;
      case 'prod':
        return EnvironmentState.prod;
      default:
        return EnvironmentState.unknown;
    }
  }

  @EnviedField()
  static const String baseUrl = _Env.baseUrl;
}

enum EnvironmentState { dev, prod, unknown }
