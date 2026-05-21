// =============================================================================
// routine_entity.dart
// =============================================================================
// Entidad de dominio que representa una rutina de ejercicios.
// Contiene una lista de ejercicios con sus detalles (series, repeticiones, etc).
// =============================================================================

import 'package:equatable/equatable.dart';

/// Entidad que representa un ejercicio individual dentro de una rutina.
class ExerciseEntity extends Equatable {
  /// Nombre del ejercicio
  final String name;

  /// Número de series
  final int sets;

  /// Número de repeticiones por serie
  final int reps;

  /// Segundos de descanso entre series
  final int restSeconds;

  /// Notas o instrucciones adicionales
  final String? notes;

  const ExerciseEntity({
    required this.name,
    required this.sets,
    required this.reps,
    required this.restSeconds,
    this.notes,
  });

  /// Crea una copia con campos modificados
  ExerciseEntity copyWith({
    String? name,
    int? sets,
    int? reps,
    int? restSeconds,
    String? notes,
  }) {
    return ExerciseEntity(
      name: name ?? this.name,
      sets: sets ?? this.sets,
      reps: reps ?? this.reps,
      restSeconds: restSeconds ?? this.restSeconds,
      notes: notes ?? this.notes,
    );
  }

  @override
  List<Object?> get props => [name, sets, reps, restSeconds, notes];
}

/// Entidad que representa una rutina completa de ejercicios.
class RoutineEntity extends Equatable {
  /// Identificador único de la rutina
  final String id;

  /// Nombre descriptivo de la rutina
  final String name;

  /// Descripción detallada de la rutina
  final String description;

  /// ID del usuario asignado a esta rutina
  final String userId;

  /// Nombre del usuario (para mostrar en listas)
  final String? userName;

  /// ID del entrenador que creó la rutina
  final String trainerId;

  /// Lista de ejercicios que componen la rutina
  final List<ExerciseEntity> exercises;

  /// Fecha de creación de la rutina
  final DateTime createdAt;

  const RoutineEntity({
    required this.id,
    required this.name,
    required this.description,
    required this.userId,
    this.userName,
    required this.trainerId,
    required this.exercises,
    required this.createdAt,
  });

  /// Crea una copia con campos modificados
  RoutineEntity copyWith({
    String? id,
    String? name,
    String? description,
    String? userId,
    String? userName,
    String? trainerId,
    List<ExerciseEntity>? exercises,
    DateTime? createdAt,
  }) {
    return RoutineEntity(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      userId: userId ?? this.userId,
      userName: userName ?? this.userName,
      trainerId: trainerId ?? this.trainerId,
      exercises: exercises ?? this.exercises,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  List<Object?> get props => [
        id,
        name,
        description,
        userId,
        userName,
        trainerId,
        exercises,
        createdAt,
      ];
}
