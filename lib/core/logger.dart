/// Simple logger placeholder used across the app.
/// Replace with a proper logging framework in production.
class AppLogger {
  static void info(String tag, String message) {
    // Placeholder for an info logger
    // e.g. integrate with Sentry, Firebase Crashlytics, etc.
    // ignore: avoid_print
    print('[INFO] [$tag] $message');
  }

  static void error(String tag, String message) {
    // ignore: avoid_print
    print('[ERROR] [$tag] $message');
  }
}
