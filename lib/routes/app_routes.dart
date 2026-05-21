import 'package:flutter/material.dart';

/// Route names and simple route table used for app wiring.
class AppRoutes {
  static const String splash = '/';
  static const String login = '/login';
  static const String dashboard = '/dashboard';
  static const String users = '/users';
  static const String memberships = '/memberships';
  static const String payments = '/payments';
  static const String attendance = '/attendance';
  static const String routines = '/routines';
  static const String reports = '/reports';

  static Map<String, WidgetBuilder> get routes => {
        splash: (context) => const Scaffold(body: Center(child: Text('Splash placeholder'))),
        login: (context) => const Scaffold(body: Center(child: Text('Login placeholder'))),
        dashboard: (context) => const Scaffold(body: Center(child: Text('Dashboard placeholder'))),
      };
}
