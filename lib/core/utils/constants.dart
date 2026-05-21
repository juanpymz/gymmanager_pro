/// ============================================================
/// CAPA CORE - Constantes de la Aplicación
/// ============================================================
/// Centraliza todas las constantes utilizadas en la aplicación.
/// Esto evita errores por cadenas de texto duplicadas (magic strings)
/// y facilita el mantenimiento cuando se necesiten cambios globales.
///
/// Se organizan en clases con constructores privados para agrupar
/// constantes relacionadas sin permitir instanciación.
/// ============================================================

/// Nombres de las colecciones en Cloud Firestore.
///
/// Cada constante corresponde al nombre exacto de la colección
/// en la base de datos. Modificar aquí actualiza todas las
/// referencias en la capa de datos automáticamente.
class FirestoreCollections {
  // Constructor privado para prevenir instanciación.
  FirestoreCollections._();

  /// Colección de usuarios del sistema (admins, entrenadores, clientes).
  static const String users = 'users';

  /// Colección de membresías asociadas a los clientes.
  static const String memberships = 'memberships';

  /// Colección de pagos registrados en el sistema.
  static const String payments = 'payments';

  /// Colección de registros de asistencia (check-in).
  static const String attendance = 'attendance';

  /// Colección de rutinas de ejercicios asignadas a los clientes.
  static const String routines = 'routines';
}

/// Roles de usuario disponibles en el sistema.
///
/// El sistema maneja tres roles principales con diferentes
/// niveles de acceso y funcionalidades:
///   - [admin]: Acceso completo al sistema (gestión, reportes, configuración).
///   - [trainer]: Gestión de clientes asignados y rutinas.
///   - [client]: Acceso a su perfil, membresía y rutinas.
class UserRoles {
  // Constructor privado para prevenir instanciación.
  UserRoles._();

  /// Rol de administrador con acceso completo.
  static const String admin = 'admin';

  /// Rol de entrenador con gestión de clientes y rutinas.
  static const String trainer = 'trainer';

  /// Rol de cliente con acceso limitado a su información.
  static const String client = 'client';

  /// Lista de todos los roles válidos del sistema.
  /// Útil para validaciones y dropdowns en la interfaz.
  static const List<String> allRoles = [admin, trainer, client];
}

/// Estados posibles de una membresía.
///
/// El ciclo de vida de una membresía es:
///   1. [active] → La membresía está vigente y permite acceso.
///   2. [inactive] → La membresía fue desactivada manualmente.
///   3. [expired] → La membresía superó su fecha de vencimiento.
class MembershipStatuses {
  // Constructor privado para prevenir instanciación.
  MembershipStatuses._();

  /// Membresía activa y vigente.
  static const String active = 'active';

  /// Membresía desactivada manualmente por un administrador.
  static const String inactive = 'inactive';

  /// Membresía vencida (superó la fecha de finalización).
  static const String expired = 'expired';

  /// Lista de todos los estados válidos de membresía.
  static const List<String> allStatuses = [active, inactive, expired];
}

/// Tipos de membresía disponibles en el gimnasio.
///
/// Cada tipo define la duración de la membresía:
///   - [monthly]: 1 mes (30 días).
///   - [quarterly]: 3 meses (90 días).
///   - [annual]: 1 año (365 días).
class MembershipTypes {
  // Constructor privado para prevenir instanciación.
  MembershipTypes._();

  /// Membresía mensual (30 días).
  static const String monthly = 'monthly';

  /// Membresía trimestral (90 días).
  static const String quarterly = 'quarterly';

  /// Membresía anual (365 días).
  static const String annual = 'annual';

  /// Lista de todos los tipos válidos de membresía.
  static const List<String> allTypes = [monthly, quarterly, annual];

  /// Retorna la duración en días según el tipo de membresía.
  ///
  /// Lanza [ArgumentError] si el tipo no es válido.
  static int durationInDays(String type) {
    switch (type) {
      case monthly:
        return 30;
      case quarterly:
        return 90;
      case annual:
        return 365;
      default:
        throw ArgumentError('Tipo de membresía no válido: $type');
    }
  }
}

/// Métodos de pago aceptados en el sistema.
class PaymentMethods {
  // Constructor privado para prevenir instanciación.
  PaymentMethods._();

  /// Pago en efectivo.
  static const String cash = 'cash';

  /// Pago con tarjeta de crédito o débito.
  static const String card = 'card';

  /// Pago por transferencia bancaria.
  static const String transfer = 'transfer';

  /// Lista de todos los métodos de pago válidos.
  static const List<String> allMethods = [cash, card, transfer];
}
