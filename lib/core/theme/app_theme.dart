// =============================================================================
// app_theme.dart
// =============================================================================
// Tema principal de la aplicación Gym Manager Pro.
// Implementa Material Design 3 con esquema de colores profesional:
// - Azul profundo como color primario (confianza, profesionalismo)
// - Naranja como color de acento (energía, motivación)
// =============================================================================

import 'package:flutter/material.dart';

/// Clase que contiene la configuración del tema de la aplicación.
/// Centraliza todos los estilos visuales para mantener consistencia.
class AppTheme {
  // -------------------------------------------------------------------------
  // Colores principales de la aplicación
  // -------------------------------------------------------------------------

  /// Azul profundo - Color primario que transmite profesionalismo
  static const Color primaryColor = Color(0xFF1565C0);

  /// Azul oscuro - Variante oscura del primario
  static const Color primaryDarkColor = Color(0xFF0D47A1);

  /// Azul claro - Variante clara del primario
  static const Color primaryLightColor = Color(0xFF42A5F5);

  /// Naranja energético - Color de acento que transmite energía
  static const Color accentColor = Color(0xFFFF6D00);

  /// Naranja claro - Para fondos y elementos sutiles
  static const Color accentLightColor = Color(0xFFFFAB40);

  /// Color de fondo principal - Gris muy claro
  static const Color backgroundColor = Color(0xFFF5F5F5);

  /// Color de superficie para tarjetas y contenedores
  static const Color surfaceColor = Colors.white;

  /// Color para texto principal
  static const Color textPrimaryColor = Color(0xFF212121);

  /// Color para texto secundario
  static const Color textSecondaryColor = Color(0xFF757575);

  /// Color de éxito - Verde para estados activos
  static const Color successColor = Color(0xFF4CAF50);

  /// Color de error - Rojo para errores y alertas
  static const Color errorColor = Color(0xFFE53935);

  /// Color de advertencia - Amarillo/ámbar
  static const Color warningColor = Color(0xFFFFC107);

  /// Color inactivo - Gris para elementos deshabilitados
  static const Color inactiveColor = Color(0xFF9E9E9E);

  // -------------------------------------------------------------------------
  // Tema claro de la aplicación (Material Design 3)
  // -------------------------------------------------------------------------

  /// Tema principal de la aplicación con Material Design 3
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,

      // Esquema de colores basado en el azul profundo
      colorScheme: ColorScheme.fromSeed(
        seedColor: primaryColor,
        primary: primaryColor,
        secondary: accentColor,
        surface: surfaceColor,
        error: errorColor,
        brightness: Brightness.light,
      ),

      // Fuente predeterminada
      fontFamily: 'Roboto',

      // Configuración del AppBar
      appBarTheme: const AppBarTheme(
        centerTitle: true,
        elevation: 0,
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
        iconTheme: IconThemeData(color: Colors.white),
      ),

      // Estilo de tarjetas elevadas
      cardTheme: CardThemeData(
        elevation: 2,
        shadowColor: Colors.black26,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      ),

      // Botones elevados (primarios)
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: primaryColor,
          foregroundColor: Colors.white,
          elevation: 2,
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          textStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),

      // Botones con borde (secundarios)
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: primaryColor,
          side: const BorderSide(color: primaryColor),
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),

      // Botones de texto
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: primaryColor,
        ),
      ),

      // Botón flotante de acción (FAB)
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: accentColor,
        foregroundColor: Colors.white,
        elevation: 4,
        shape: CircleBorder(),
      ),

      // Campos de texto con bordes redondeados
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: Colors.grey.shade50,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 16,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.grey.shade300),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.grey.shade300),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: primaryColor, width: 2),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: errorColor),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: errorColor, width: 2),
        ),
        labelStyle: const TextStyle(color: textSecondaryColor),
        prefixIconColor: primaryColor,
      ),

      // Chips para filtros
      chipTheme: ChipThemeData(
        backgroundColor: Colors.grey.shade100,
        selectedColor: primaryColor.withValues(alpha: 0.2),
        labelStyle: const TextStyle(fontSize: 13),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        side: BorderSide.none,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      ),

      // Drawer lateral
      drawerTheme: const DrawerThemeData(
        backgroundColor: Colors.white,
      ),

      // Snackbar para notificaciones
      snackBarTheme: SnackBarThemeData(
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),

      // Divisores
      dividerTheme: DividerThemeData(
        color: Colors.grey.shade200,
        thickness: 1,
      ),

      // Color de fondo general
      scaffoldBackgroundColor: backgroundColor,
    );
  }
}
