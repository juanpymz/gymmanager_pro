/// ============================================================
/// CAPA CORE - Clases de Fallo (Failures)
/// ============================================================
/// Las Failures representan errores de dominio que se propagan
/// de forma funcional (sin lanzar excepciones) a través de las capas.
///
/// Se usa [Equatable] para facilitar la comparación de instancias,
/// lo cual es esencial para las pruebas unitarias y para que
/// BLoC pueda detectar cambios de estado correctamente.
///
/// Patrón: Las excepciones de la capa de datos se capturan y
/// se convierten en Failures antes de llegar a la capa de dominio.
/// ============================================================

import 'package:equatable/equatable.dart';

/// Clase base abstracta para todos los fallos de la aplicación.
/// Extiende [Equatable] para permitir comparación por valor.
abstract class Failure extends Equatable {
  /// Mensaje descriptivo del fallo ocurrido.
  final String message;

  /// Crea una instancia de [Failure] con un [message] descriptivo.
  const Failure(this.message);

  @override
  List<Object?> get props => [message];
}

/// Fallo originado por un error en el servidor o servicios remotos.
/// Se genera a partir de [ServerException] en la capa de datos.
class ServerFailure extends Failure {
  /// Crea un [ServerFailure] con un [message] descriptivo.
  const ServerFailure(super.message);
}

/// Fallo originado por un error de autenticación.
/// Se genera a partir de [AuthException] en la capa de datos.
class AuthFailure extends Failure {
  /// Crea un [AuthFailure] con un [message] descriptivo.
  const AuthFailure(super.message);
}

/// Fallo originado por datos de entrada inválidos.
/// Se genera a partir de [ValidationException] o validaciones internas.
class ValidationFailure extends Failure {
  /// Crea un [ValidationFailure] con un [message] descriptivo.
  const ValidationFailure(super.message);
}

/// Fallo originado por un error específico de Firestore.
/// Cubre errores de permisos, documentos no encontrados,
/// o problemas de conexión con Cloud Firestore.
class FirestoreFailure extends Failure {
  /// Crea un [FirestoreFailure] con un [message] descriptivo.
  const FirestoreFailure(super.message);
}
