/// ============================================================
/// CAPA CORE - Utilidades de Fecha
/// ============================================================
/// Funciones utilitarias para el manejo y formateo de fechas.
/// Usa el paquete [intl] para formatear fechas en español
/// de manera consistente en toda la aplicación.
///
/// Estas utilidades se usan en:
///   - Capa de presentación: Para mostrar fechas legibles al usuario.
///   - Capa de dominio: Para cálculos de vencimiento de membresías.
///   - Capa de datos: Para serialización/deserialización de fechas.
/// ============================================================

import 'package:intl/intl.dart';

/// Clase utilitaria con métodos estáticos para el manejo de fechas.
///
/// No se instancia directamente; todos los métodos son estáticos.
class AppDateUtils {
  // Constructor privado para prevenir instanciación.
  AppDateUtils._();

  /// Formato de fecha corta: dd/MM/yyyy
  /// Ejemplo: 21/05/2026
  static final DateFormat _dateFormat = DateFormat('dd/MM/yyyy');

  /// Formato de fecha con hora: dd/MM/yyyy HH:mm
  /// Ejemplo: 21/05/2026 14:30
  static final DateFormat _dateTimeFormat = DateFormat('dd/MM/yyyy HH:mm');

  /// Formatea una fecha [date] al formato corto dd/MM/yyyy.
  ///
  /// Ejemplo:
  /// ```dart
  /// final formatted = AppDateUtils.formatDate(DateTime(2026, 5, 21));
  /// print(formatted); // '21/05/2026'
  /// ```
  static String formatDate(DateTime date) {
    return _dateFormat.format(date);
  }

  /// Formatea una fecha con hora [dateTime] al formato dd/MM/yyyy HH:mm.
  ///
  /// Ejemplo:
  /// ```dart
  /// final formatted = AppDateUtils.formatDateTime(DateTime(2026, 5, 21, 14, 30));
  /// print(formatted); // '21/05/2026 14:30'
  /// ```
  static String formatDateTime(DateTime dateTime) {
    return _dateTimeFormat.format(dateTime);
  }

  /// Verifica si una fecha [endDate] ya expiró comparándola con la fecha actual.
  ///
  /// Retorna `true` si [endDate] es anterior al momento actual.
  /// Retorna `false` si [endDate] es igual o posterior al momento actual.
  ///
  /// Ejemplo:
  /// ```dart
  /// final expired = AppDateUtils.isExpired(DateTime(2025, 1, 1)); // true
  /// final active = AppDateUtils.isExpired(DateTime(2027, 12, 31)); // false
  /// ```
  static bool isExpired(DateTime endDate) {
    return endDate.isBefore(DateTime.now());
  }

  /// Calcula la diferencia en días entre dos fechas.
  ///
  /// Retorna el número absoluto de días entre [from] y [to].
  /// El resultado siempre es positivo sin importar el orden de las fechas,
  /// pero por convención [from] debería ser anterior a [to].
  ///
  /// Ejemplo:
  /// ```dart
  /// final days = AppDateUtils.daysBetween(
  ///   DateTime(2026, 5, 1),
  ///   DateTime(2026, 5, 21),
  /// ); // 20
  /// ```
  static int daysBetween(DateTime from, DateTime to) {
    // Normalizamos a medianoche para evitar problemas con horas parciales.
    final fromDate = DateTime(from.year, from.month, from.day);
    final toDate = DateTime(to.year, to.month, to.day);
    return toDate.difference(fromDate).inDays.abs();
  }
}
