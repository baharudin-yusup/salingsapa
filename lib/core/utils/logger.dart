import 'dart:core' as core;
import 'dart:developer';

class Logger {
  Logger._();

  static void print(
    core.Object message, {
    core.String name = '',
  }) {
    return log('$message', name: name);
  }

  static void error(
    core.Object? error, {
    required core.String event,
    core.String name = '',
  }) {
    return log('An error occurred when $event', name: name, error: error);
  }
}
