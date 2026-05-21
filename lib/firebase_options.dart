// =============================================================================
// firebase_options.dart
// =============================================================================
// ARCHIVO PLACEHOLDER - Configuración de Firebase
//
// Este archivo debe ser generado automáticamente ejecutando:
//   flutterfire configure
//
// Antes de ejecutar el comando, asegúrate de:
// 1. Tener instalado Firebase CLI: npm install -g firebase-tools
// 2. Tener instalado FlutterFire CLI: dart pub global activate flutterfire_cli
// 3. Haber iniciado sesión: firebase login
// 4. Tener un proyecto de Firebase creado en la consola de Firebase
//
// Una vez generado, este archivo contendrá las credenciales de tu proyecto
// Firebase para cada plataforma (Android, iOS, Web).
// =============================================================================

import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Configuración predeterminada de Firebase para la plataforma actual.
///
/// IMPORTANTE: Reemplaza estos valores con los de tu proyecto Firebase
/// o ejecuta `flutterfire configure` para generar este archivo automáticamente.
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions no ha sido configurado para macOS. '
          'Ejecuta `flutterfire configure` para generar la configuración.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions no ha sido configurado para Windows. '
          'Ejecuta `flutterfire configure` para generar la configuración.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions no ha sido configurado para Linux. '
          'Ejecuta `flutterfire configure` para generar la configuración.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions no está soportado para esta plataforma.',
        );
    }
  }

  // ---------------------------------------------------------------------------
  // PLACEHOLDER: Reemplaza estos valores con los de tu proyecto Firebase
  // ---------------------------------------------------------------------------

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'TU_API_KEY_WEB',
    appId: 'TU_APP_ID_WEB',
    messagingSenderId: 'TU_MESSAGING_SENDER_ID',
    projectId: 'TU_PROJECT_ID',
    authDomain: 'TU_PROJECT_ID.firebaseapp.com',
    storageBucket: 'TU_PROJECT_ID.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'TU_API_KEY_ANDROID',
    appId: 'TU_APP_ID_ANDROID',
    messagingSenderId: 'TU_MESSAGING_SENDER_ID',
    projectId: 'TU_PROJECT_ID',
    storageBucket: 'TU_PROJECT_ID.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'TU_API_KEY_IOS',
    appId: 'TU_APP_ID_IOS',
    messagingSenderId: 'TU_MESSAGING_SENDER_ID',
    projectId: 'TU_PROJECT_ID',
    storageBucket: 'TU_PROJECT_ID.appspot.com',
    iosBundleId: 'com.gymmanagerpro.gymManagerPro',
  );
}
