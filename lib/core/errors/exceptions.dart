/// ============================================================
/// CAPA CORE - Excepciones Personalizadas
/// ============================================================
/// Define las excepciones específicas de la aplicación.
/// Estas excepciones se lanzan en la capa de datos (Data Layer)
/// y se capturan para convertirlas en Failures en la capa de dominio.
///
/// Jerarquía:
///   - [ServerException]: Errores de comunicación con servicios remotos (Firebase).
///   - [CacheException]: Errores al acceder al almacenamiento local.
///   - [AuthException]: Errores de autenticación (login, registro, sesión).
///   - [ValidationException]: Errores de validación de datos de entrada.
/// ============================================================

/// Excepción lanzada cuando ocurre un error en la comunicación
/// con el servidor o servicios remotos (ej. Firebase Functions, Firestore).
class ServerException implements Exception {
  /// Mensaje descriptivo del error ocurrido.
  final String message;

  /// Crea una [ServerException] con un [message] descriptivo.
  const ServerException(this.message);

  @override
  String toString() => 'ServerException: $message';
}

/// Excepción lanzada cuando ocurre un error al acceder
/// al almacenamiento local o caché del dispositivo.
class CacheException implements Exception {
  /// Mensaje descriptivo del error ocurrido.
  final String message;

  /// Crea una [CacheException] con un [message] descriptivo.
  const CacheException(this.message);

  @override
  String toString() => 'CacheException: $message';
}

/// Excepción lanzada cuando ocurre un error relacionado
/// con la autenticación del usuario (credenciales inválidas,
/// sesión expirada, permisos insuficientes, etc.).
class AuthException implements Exception {
  /// Mensaje descriptivo del error de autenticación.
  final String message;

  /// Crea una [AuthException] con un [message] descriptivo.
  const AuthException(this.message);

  @override
  String toString() => 'AuthException: $message';
}

/// Excepción lanzada cuando los datos de entrada no cumplen
/// con las reglas de validación definidas en la aplicación.
class ValidationException implements Exception {
  /// Mensaje descriptivo del error de validación.
  final String message;

  /// Crea una [ValidationException] con un [message] descriptivo.
  const ValidationException(this.message);

  @override
  String toString() => 'ValidationException: $message';
}
