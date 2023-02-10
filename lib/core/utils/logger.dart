import 'dart:developer';

class Logger {
  Logger._();

  static void print(
    Object message, {
    String name = '',
  }) {
    return log('$message', name: name);
  }

  static void error(
    Object error, {
    required String event,
    String name = '',
  }) {
    return log('An error occurred when $event', name: name, error: error);
  }
}
