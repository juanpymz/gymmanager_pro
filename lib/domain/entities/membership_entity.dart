/// Domain entity for Memberships
class MembershipEntity {
  final String id;
  final String name;
  final double price;
  final int durationDays;

  MembershipEntity({required this.id, required this.name, required this.price, required this.durationDays});
}
// =============================================================================
// membership_entity.dart
// =============================================================================
// Entidad de dominio que representa una membresía de gimnasio.
// Contiene información sobre el tipo, duración, costo y estado.
// =============================================================================

import 'package:equatable/equatable.dart';

/// Entidad que representa una membresía del gimnasio.
/// Los tipos pueden ser: 'monthly', 'quarterly', 'annual'.
class MembershipEntity extends Equatable {
  /// Identificador único de la membresía
  final String id;

  /// ID del usuario al que pertenece la membresía
  final String userId;

  /// Nombre del usuario (para mostrar en listas)
  final String? userName;

  /// Tipo de membresía: 'monthly', 'quarterly', 'annual'
  final String type;

  /// Fecha de inicio de la membresía
  final DateTime startDate;

  /// Fecha de finalización de la membresía
  final DateTime endDate;

  /// Costo de la membresía
  final double cost;

  /// Estado: 'active', 'expired', 'inactive'
  final String status;

  /// Fecha de creación del registro
  final DateTime createdAt;

  const MembershipEntity({
    required this.id,
    required this.userId,
    this.userName,
    required this.type,
    required this.startDate,
    required this.endDate,
    required this.cost,
    required this.status,
    required this.createdAt,
  });

  /// Verifica si la membresía está activa actualmente
  bool get isActive => status == 'active' && endDate.isAfter(DateTime.now());

  /// Crea una copia con campos modificados
  MembershipEntity copyWith({
    String? id,
    String? userId,
    String? userName,
    String? type,
    DateTime? startDate,
    DateTime? endDate,
    double? cost,
    String? status,
    DateTime? createdAt,
  }) {
    return MembershipEntity(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      userName: userName ?? this.userName,
      type: type ?? this.type,
      startDate: startDate ?? this.startDate,
      endDate: endDate ?? this.endDate,
      cost: cost ?? this.cost,
      status: status ?? this.status,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  List<Object?> get props => [
        id,
        userId,
        userName,
        type,
        startDate,
        endDate,
        cost,
        status,
        createdAt,
      ];
}
