import 'package:cloud_firestore/cloud_firestore.dart';
import '../../domain/entities/user_entity.dart';

/// Data model representing a user in Firestore.
class UserModel extends UserEntity {
  final String id;
  final String email;
  final String name;
  final bool isActive;

  UserModel({
    required this.id,
    required this.email,
    required this.name,
    required this.isActive,
  }) : super(id: id, email: email, name: name, isActive: isActive);

  factory UserModel.fromDocument(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>? ?? {};
    return UserModel(
      id: doc.id,
      email: data['email'] ?? '',
      name: data['name'] ?? '',
      isActive: data['isActive'] ?? true,
    );
  }

  Map<String, dynamic> toMap() => {
        'email': email,
        'name': name,
        'isActive': isActive,
      };
}
/// Modelo de datos para el usuario del gimnasio.
///
/// [UserModel] extiende [UserEntity] del dominio y agrega capacidades
/// de serialización/deserialización para Firestore. Este modelo actúa
/// como puente entre la capa de datos (Firestore) y la capa de dominio.
library;

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:gym_manager_pro/domain/entities/user_entity.dart';

/// Modelo de usuario que maneja la conversión entre Firestore y la entidad de dominio.
///
/// Proporciona métodos [toMap] y [fromMap] para serialización con Firestore,
/// y [fromEntity] para convertir desde la entidad de dominio.
class UserModel extends UserEntity {
  /// Constructor principal del modelo de usuario.
  ///
  /// Todos los campos son requeridos para garantizar integridad de datos
  /// al interactuar con Firestore.
  const UserModel({
    required super.id,
    required super.name,
    required super.email,
    required super.phone,
    required super.role,
    super.trainerId,
    required super.isActive,
    required super.createdAt,
    required super.updatedAt,
  });

  /// Crea un [UserModel] a partir de un mapa de Firestore.
  ///
  /// [map] contiene los datos del documento de Firestore.
  /// [id] es el ID del documento, que se pasa por separado ya que
  /// Firestore no lo incluye dentro del mapa de datos del documento.
  ///
  /// Maneja la conversión de [Timestamp] a [DateTime] para los campos
  /// de fecha ([createdAt], [updatedAt]).
  factory UserModel.fromMap(Map<String, dynamic> map, String id) {
    return UserModel(
      id: id,
      name: map['name'] as String? ?? '',
      email: map['email'] as String? ?? '',
      phone: map['phone'] as String? ?? '',
      role: map['role'] as String? ?? 'member',
      trainerId: map['trainerId'] as String?,
      isActive: map['isActive'] as bool? ?? true,
      createdAt: _timestampToDateTime(map['createdAt']),
      updatedAt: _timestampToDateTime(map['updatedAt']),
    );
  }

  /// Crea un [UserModel] a partir de una entidad de dominio [UserEntity].
  ///
  /// Útil cuando se necesita enviar datos desde la capa de dominio
  /// hacia Firestore (ej: al registrar o actualizar un usuario).
  factory UserModel.fromEntity(UserEntity entity) {
    return UserModel(
      id: entity.id,
      name: entity.name,
      email: entity.email,
      phone: entity.phone,
      role: entity.role,
      trainerId: entity.trainerId,
      isActive: entity.isActive,
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
    );
  }

  /// Convierte el modelo a un mapa compatible con Firestore.
  ///
  /// Los campos [DateTime] se convierten a [Timestamp] de Firestore
  /// para almacenamiento correcto. El campo [id] no se incluye en el mapa
  /// porque en Firestore se usa como ID del documento, no como campo interno.
  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'email': email,
      'phone': phone,
      'role': role,
      'trainerId': trainerId,
      'isActive': isActive,
      'createdAt': Timestamp.fromDate(createdAt),
      'updatedAt': Timestamp.fromDate(updatedAt),
    };
  }

  /// Convierte un valor dinámico (potencialmente [Timestamp]) a [DateTime].
  ///
  /// Si el valor es nulo o no es un [Timestamp], retorna la fecha y hora actual
  /// como valor por defecto para evitar errores en tiempo de ejecución.
  static DateTime _timestampToDateTime(dynamic value) {
    if (value is Timestamp) {
      return value.toDate();
    }
    return DateTime.now();
  }
}
