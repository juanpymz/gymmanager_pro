import 'package:cloud_firestore/cloud_firestore.dart';

/// Routine model placeholder
class RoutineModel {
  final String id;
  final String title;
  final List<String> exercises;

  RoutineModel({required this.id, required this.title, required this.exercises});

  factory RoutineModel.fromDocument(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>? ?? {};
    return RoutineModel(
      id: doc.id,
      title: data['title'] ?? '',
      exercises: List<String>.from(data['exercises'] ?? []),
    );
  }

  Map<String, dynamic> toMap() => {
        'title': title,
        'exercises': exercises,
      };
}
/// Modelo de datos para las rutinas de entrenamiento.
///
/// [RoutineModel] extiende [RoutineEntity] y maneja la serialización
/// de rutinas completas incluyendo la lista de ejercicios anidada.
/// Cada ejercicio se serializa como un sub-mapa dentro del documento.
library;

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:gym_manager_pro/domain/entities/routine_entity.dart';

/// Modelo auxiliar para los ejercicios individuales dentro de una rutina.
///
/// [ExerciseItemModel] extiende [ExerciseItem] del dominio y proporciona
/// métodos de serialización para almacenar ejercicios como sub-documentos
/// dentro del array de ejercicios de una rutina en Firestore.
class ExerciseItemModel extends ExerciseItem {
  /// Constructor del modelo de ejercicio.
  const ExerciseItemModel({
    required super.name,
    required super.sets,
    required super.reps,
    required super.weight,
    super.notes,
  });

  /// Crea un [ExerciseItemModel] desde un mapa de Firestore.
  ///
  /// Los campos numéricos se manejan como [num] para soportar
  /// tanto enteros como decimales de Firestore.
  factory ExerciseItemModel.fromMap(Map<String, dynamic> map) {
    return ExerciseItemModel(
      name: map['name'] as String? ?? '',
      sets: (map['sets'] as num?)?.toInt() ?? 0,
      reps: (map['reps'] as num?)?.toInt() ?? 0,
      weight: (map['weight'] as num?)?.toDouble() ?? 0.0,
      notes: map['notes'] as String?,
    );
  }

  /// Crea un [ExerciseItemModel] desde una entidad de dominio [ExerciseItem].
  factory ExerciseItemModel.fromEntity(ExerciseItem entity) {
    return ExerciseItemModel(
      name: entity.name,
      sets: entity.sets,
      reps: entity.reps,
      weight: entity.weight,
      notes: entity.notes,
    );
  }

  /// Serializa el ejercicio a un mapa para Firestore.
  ///
  /// Se almacena como un elemento dentro del array 'exercises'
  /// del documento de rutina en Firestore.
  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'sets': sets,
      'reps': reps,
      'weight': weight,
      'notes': notes,
    };
  }
}

/// Modelo de rutina para la capa de datos.
///
/// Gestiona la conversión completa de rutinas de entrenamiento,
/// incluyendo la lista anidada de ejercicios. Cada ejercicio se
/// serializa individualmente mediante [ExerciseItemModel].
class RoutineModel extends RoutineEntity {
  /// Constructor principal del modelo de rutina.
  const RoutineModel({
    required super.id,
    required super.userId,
    required super.trainerId,
    required super.name,
    required super.description,
    required super.exercises,
    required super.createdAt,
    required super.updatedAt,
  });

  /// Crea un [RoutineModel] desde un mapa de documento de Firestore.
  ///
  /// [map] contiene los campos del documento.
  /// [id] es el identificador del documento.
  ///
  /// El campo 'exercises' se deserializa como una lista de mapas,
  /// donde cada mapa se convierte a un [ExerciseItemModel].
  factory RoutineModel.fromMap(Map<String, dynamic> map, String id) {
    // Deserializar la lista de ejercicios desde Firestore
    final exercisesList = (map['exercises'] as List<dynamic>?)
            ?.map((e) =>
                ExerciseItemModel.fromMap(e as Map<String, dynamic>))
            .toList() ??
        [];

    return RoutineModel(
      id: id,
      userId: map['userId'] as String? ?? '',
      trainerId: map['trainerId'] as String? ?? '',
      name: map['name'] as String? ?? '',
      description: map['description'] as String? ?? '',
      exercises: exercisesList,
      createdAt: _timestampToDateTime(map['createdAt']),
      updatedAt: _timestampToDateTime(map['updatedAt']),
    );
  }

  /// Crea un [RoutineModel] desde una entidad de dominio [RoutineEntity].
  ///
  /// Convierte cada [ExerciseItem] a [ExerciseItemModel] para
  /// poder serializarlos correctamente a Firestore.
  factory RoutineModel.fromEntity(RoutineEntity entity) {
    return RoutineModel(
      id: entity.id,
      userId: entity.userId,
      trainerId: entity.trainerId,
      name: entity.name,
      description: entity.description,
      exercises: entity.exercises
          .map((e) => ExerciseItemModel.fromEntity(e))
          .toList(),
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
    );
  }

  /// Serializa la rutina completa a un mapa para Firestore.
  ///
  /// Los ejercicios se convierten a una lista de mapas usando
  /// [ExerciseItemModel.toMap]. Las fechas se convierten a [Timestamp].
  Map<String, dynamic> toMap() {
    return {
      'userId': userId,
      'trainerId': trainerId,
      'name': name,
      'description': description,
      'exercises': exercises
          .map((e) => ExerciseItemModel.fromEntity(e).toMap())
          .toList(),
      'createdAt': Timestamp.fromDate(createdAt),
      'updatedAt': Timestamp.fromDate(updatedAt),
    };
  }

  /// Convierte de forma segura un valor dinámico a [DateTime].
  static DateTime _timestampToDateTime(dynamic value) {
    if (value is Timestamp) {
      return value.toDate();
    }
    return DateTime.now();
  }
}
