// =============================================================================
// attendance_entity.dart
// =============================================================================
// Entidad de dominio que representa un registro de asistencia.
// Almacena la información de check-in de los usuarios al gimnasio.
// =============================================================================

import 'package:equatable/equatable.dart';

/// Entidad que representa un registro de asistencia al gimnasio.
class AttendanceEntity extends Equatable {
  /// Identificador único del registro de asistencia
  final String id;

  /// ID del usuario que registró asistencia
  final String userId;

  /// Nombre del usuario (para mostrar en listas)
  final String? userName;

  /// Fecha y hora del registro de asistencia (check-in)
  final DateTime checkInTime;

  /// Notas adicionales sobre la asistencia
  final String? notes;

  const AttendanceEntity({
    required this.id,
    required this.userId,
    this.userName,
    required this.checkInTime,
    this.notes,
  });

  /// Crea una copia con campos modificados
  AttendanceEntity copyWith({
    String? id,
    String? userId,
    String? userName,
    DateTime? checkInTime,
    String? notes,
  }) {
    return AttendanceEntity(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      userName: userName ?? this.userName,
      checkInTime: checkInTime ?? this.checkInTime,
      notes: notes ?? this.notes,
    );
  }

  @override
  List<Object?> get props => [id, userId, userName, checkInTime, notes];
}
