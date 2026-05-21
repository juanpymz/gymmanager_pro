import 'package:cloud_firestore/cloud_firestore.dart';

/// Membership model placeholder
class MembershipModel {
  final String id;
  final String name;
  final double price;
  final int durationDays;

  MembershipModel({required this.id, required this.name, required this.price, required this.durationDays});

  factory MembershipModel.fromDocument(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>? ?? {};
    return MembershipModel(
      id: doc.id,
      name: data['name'] ?? '',
      price: (data['price'] ?? 0).toDouble(),
      durationDays: data['durationDays'] ?? 30,
    );
  }

  Map<String, dynamic> toMap() => {
        'name': name,
        'price': price,
        'durationDays': durationDays,
      };
}
/// Modelo de datos para las membresías del gimnasio.
///
/// [MembershipModel] extiende [MembershipEntity] y proporciona
/// serialización/deserialización para Firestore. Gestiona las conversiones
/// de fechas entre [DateTime] (dominio) y [Timestamp] (Firestore).
library;

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:gym_manager_pro/domain/entities/membership_entity.dart';

/// Modelo de membresía para la capa de datos.
///
/// Contiene la lógica de transformación entre los documentos de Firestore
/// y las entidades de dominio, asegurando que los tipos de datos
/// sean correctos en ambas direcciones.
class MembershipModel extends MembershipEntity {
  /// Constructor principal del modelo de membresía.
  const MembershipModel({
    required super.id,
    required super.userId,
    required super.startDate,
    required super.endDate,
    required super.status,
    required super.cost,
    required super.type,
    required super.createdAt,
  });

  /// Crea un [MembershipModel] desde un mapa de documento de Firestore.
  ///
  /// [map] contiene los campos del documento.
  /// [id] es el identificador del documento de Firestore.
  ///
  /// Los campos de fecha ([startDate], [endDate], [createdAt]) se convierten
  /// de [Timestamp] a [DateTime]. El campo [cost] se maneja como [num]
  /// para soportar tanto enteros como decimales de Firestore.
  factory MembershipModel.fromMap(Map<String, dynamic> map, String id) {
    return MembershipModel(
      id: id,
      userId: map['userId'] as String? ?? '',
      startDate: _timestampToDateTime(map['startDate']),
      endDate: _timestampToDateTime(map['endDate']),
      status: map['status'] as String? ?? 'inactive',
      cost: (map['cost'] as num?)?.toDouble() ?? 0.0,
      type: map['type'] as String? ?? '',
      createdAt: _timestampToDateTime(map['createdAt']),
    );
  }

  /// Crea un [MembershipModel] a partir de una entidad de dominio.
  ///
  /// Se utiliza cuando la capa de dominio necesita persistir datos
  /// a través de los repositorios hacia Firestore.
  factory MembershipModel.fromEntity(MembershipEntity entity) {
    return MembershipModel(
      id: entity.id,
      userId: entity.userId,
      startDate: entity.startDate,
      endDate: entity.endDate,
      status: entity.status,
      cost: entity.cost,
      type: entity.type,
      createdAt: entity.createdAt,
    );
  }

  /// Serializa el modelo a un mapa para almacenamiento en Firestore.
  ///
  /// Convierte las fechas [DateTime] a [Timestamp] de Firestore.
  /// El [id] no se incluye ya que se usa como ID del documento.
  Map<String, dynamic> toMap() {
    return {
      'userId': userId,
      'startDate': Timestamp.fromDate(startDate),
      'endDate': Timestamp.fromDate(endDate),
      'status': status,
      'cost': cost,
      'type': type,
      'createdAt': Timestamp.fromDate(createdAt),
    };
  }

  /// Convierte de forma segura un valor dinámico a [DateTime].
  ///
  /// Retorna [DateTime.now] si el valor es nulo o no es [Timestamp].
  static DateTime _timestampToDateTime(dynamic value) {
    if (value is Timestamp) {
      return value.toDate();
    }
    return DateTime.now();
  }
}
