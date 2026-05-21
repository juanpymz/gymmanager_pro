/// ============================================================
/// CAPA CORE - Contrato Base de Casos de Uso
/// ============================================================
/// Define el contrato genérico que todos los casos de uso deben seguir.
/// Esto garantiza una interfaz uniforme en toda la capa de dominio.
///
/// Patrón:
///   - [UseCase<Type, Params>]: Clase abstracta con un método [call].
///   - [Type]: El tipo de retorno del caso de uso.
///   - [Params]: Los parámetros de entrada (usa [NoParams] si no necesita).
///
/// El método [call] permite invocar el caso de uso como si fuera
/// una función: `final result = await loginUseCase(params);`
/// ============================================================

import 'package:equatable/equatable.dart';

/// Contrato abstracto para todos los casos de uso de la aplicación.
///
/// [Type] es el tipo de dato que retorna el caso de uso.
/// [Params] son los parámetros necesarios para ejecutar el caso de uso.
///
/// Ejemplo de implementación:
/// ```dart
/// class LoginUseCase extends UseCase<UserEntity, LoginParams> {
///   @override
///   Future<UserEntity> call(LoginParams params) async { ... }
/// }
/// ```
abstract class UseCase<Type, Params> {
  /// Ejecuta el caso de uso con los parámetros proporcionados.
  ///
  /// Retorna un [Future<Type>] con el resultado de la operación.
  /// Puede lanzar excepciones que serán manejadas por la capa de presentación.
  Future<Type> call(Params params);
}

/// Clase utilizada cuando un caso de uso no requiere parámetros de entrada.
///
/// Usa [Equatable] para garantizar que todas las instancias de [NoParams]
/// sean consideradas iguales al compararse.
///
/// Ejemplo de uso:
/// ```dart
/// class LogoutUseCase extends UseCase<void, NoParams> {
///   @override
///   Future<void> call(NoParams params) async { ... }
/// }
///
/// // Invocación:
/// await logoutUseCase(NoParams());
/// ```
class NoParams extends Equatable {
  /// Crea una instancia de [NoParams].
  const NoParams();

  @override
  List<Object?> get props => [];
}
