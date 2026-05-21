/// Domain entity for a User
class UserEntity {
  final String id;
  final String email;
  final String name;
  final bool isActive;

  UserEntity({
    required this.id,
    required this.email,
    required this.name,
    required this.isActive,
  });
}
// =============================================================================
// user_entity.dart
// =============================================================================
// Entidad de dominio que representa un usuario del sistema.
// Puede ser administrador, entrenador o cliente del gimnasio.
// Usa Equatable para comparación de objetos en BLoC.
// =============================================================================

import 'package:equatable/equatable.dart';

/// Entidad que representa un usuario en el dominio de la aplicación.
/// Los roles posibles son: 'admin', 'trainer', 'client'.
class UserEntity extends Equatable {
  /// Identificador único del usuario (generado por Firebase)
  final String id;

  /// Nombre completo del usuario
  final String name;

  /// Correo electrónico (usado para autenticación)
  final String email;

  /// Número de teléfono de contacto
  final String phone;

  /// Rol del usuario: 'admin', 'trainer', 'client'
  final String role;

  /// Indica si el usuario está activo en el sistema
  final bool isActive;

  /// ID del entrenador asignado (solo para clientes)
  final String? trainerId;

  /// URL de la foto de perfil (opcional)
  final String? photoUrl;

  /// Fecha de registro en el sistema
  final DateTime createdAt;

  const UserEntity({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.role,
    this.isActive = true,
    this.trainerId,
    this.photoUrl,
    required this.createdAt,
  });

  /// Crea una copia de la entidad con campos opcionales modificados
  UserEntity copyWith({
    String? id,
    String? name,
    String? email,
    String? phone,
    String? role,
    bool? isActive,
    String? trainerId,
    String? photoUrl,
    DateTime? createdAt,
  }) {
    return UserEntity(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      role: role ?? this.role,
      isActive: isActive ?? this.isActive,
      trainerId: trainerId ?? this.trainerId,
      photoUrl: photoUrl ?? this.photoUrl,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  List<Object?> get props => [
        id,
        name,
        email,
        phone,
        role,
        isActive,
        trainerId,
        photoUrl,
        createdAt,
      ];
}
