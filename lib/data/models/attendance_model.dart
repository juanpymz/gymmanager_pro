import 'package:cloud_firestore/cloud_firestore.dart';

/// Attendance model placeholder
class AttendanceModel {
  final String id;
  final String userId;
  final DateTime timestamp;

  AttendanceModel({required this.id, required this.userId, required this.timestamp});

  factory AttendanceModel.fromDocument(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>? ?? {};
    return AttendanceModel(
      id: doc.id,
      userId: data['userId'] ?? '',
      timestamp: DateTime.tryParse(data['timestamp'] ?? '') ?? DateTime.now(),
    );
  }

  Map<String, dynamic> toMap() => {
        'userId': userId,
        'timestamp': timestamp.toIso8601String(),
      };
}
/// Modelo de datos para el registro de asistencia del gimnasio.
///
/// [AttendanceModel] extiende [AttendanceEntity] y proporciona
/// serialización para Cloud Firestore. Registra la entrada (check-in)
/// de los miembros al gimnasio con marcas de tiempo precisas.
library;

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:gym_manager_pro/domain/entities/attendance_entity.dart';

/// Modelo de asistencia para la capa de datos.
///
/// Maneja la conversión entre los documentos de la colección 'attendance'
/// en Firestore y la entidad de dominio [AttendanceEntity].
class AttendanceModel extends AttendanceEntity {
  /// Constructor principal del modelo de asistencia.
  const AttendanceModel({
    required super.id,
    required super.userId,
    required super.checkInTime,
    required super.createdAt,
  });

  /// Crea un [AttendanceModel] desde un mapa de documento de Firestore.
  ///
  /// [map] contiene los campos del documento de asistencia.
  /// [id] es el identificador único del documento en Firestore.
  ///
  /// Los campos [checkInTime] y [createdAt] se convierten de [Timestamp]
  /// a [DateTime] para su uso en la capa de dominio.
  factory AttendanceModel.fromMap(Map<String, dynamic> map, String id) {
    return AttendanceModel(
      id: id,
      userId: map['userId'] as String? ?? '',
      checkInTime: _timestampToDateTime(map['checkInTime']),
      createdAt: _timestampToDateTime(map['createdAt']),
    );
  }

  /// Crea un [AttendanceModel] desde una entidad de dominio.
  ///
  /// Se usa al registrar una nueva asistencia desde la capa de dominio.
  factory AttendanceModel.fromEntity(AttendanceEntity entity) {
    return AttendanceModel(
      id: entity.id,
      userId: entity.userId,
      checkInTime: entity.checkInTime,
      createdAt: entity.createdAt,
    );
  }

  /// Serializa el modelo a un mapa para almacenamiento en Firestore.
  ///
  /// Las fechas [DateTime] se convierten a [Timestamp] de Firestore.
  /// El [id] no se incluye porque se usa como ID del documento.
  Map<String, dynamic> toMap() {
    return {
      'userId': userId,
      'checkInTime': Timestamp.fromDate(checkInTime),
      'createdAt': Timestamp.fromDate(createdAt),
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
