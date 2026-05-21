import 'package:flutter/material.dart';

/// Splash screen placeholder.
class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('Splash - Gym Manager Pro')),
    );
  }
}
