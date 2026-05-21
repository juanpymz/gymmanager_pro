/// Payment domain entity
class PaymentEntity {
  final String id;
  final String userId;
  final double amount;
  final DateTime date;

  PaymentEntity({required this.id, required this.userId, required this.amount, required this.date});
}
// =============================================================================
// payment_entity.dart
// =============================================================================
// Entidad de dominio que representa un pago realizado en el gimnasio.
// Registra el monto, método de pago, fecha y usuario asociado.
// =============================================================================

import 'package:equatable/equatable.dart';

/// Entidad que representa un pago en el sistema.
/// Los métodos de pago: 'cash', 'card', 'transfer', 'other'.
class PaymentEntity extends Equatable {
  /// Identificador único del pago
  final String id;

  /// ID del usuario que realizó el pago
  final String userId;

  /// Nombre del usuario (para mostrar en listas)
  final String? userName;

  /// Monto del pago
  final double amount;

  /// Método de pago: 'cash', 'card', 'transfer', 'other'
  final String paymentMethod;

  /// Fecha en que se realizó el pago
  final DateTime paymentDate;

  /// Concepto o descripción del pago
  final String? concept;

  /// ID de la membresía asociada (si aplica)
  final String? membershipId;

  /// Fecha de creación del registro
  final DateTime createdAt;

  const PaymentEntity({
    required this.id,
    required this.userId,
    this.userName,
    required this.amount,
    required this.paymentMethod,
    required this.paymentDate,
    this.concept,
    this.membershipId,
    required this.createdAt,
  });

  /// Crea una copia con campos modificados
  PaymentEntity copyWith({
    String? id,
    String? userId,
    String? userName,
    double? amount,
    String? paymentMethod,
    DateTime? paymentDate,
    String? concept,
    String? membershipId,
    DateTime? createdAt,
  }) {
    return PaymentEntity(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      userName: userName ?? this.userName,
      amount: amount ?? this.amount,
      paymentMethod: paymentMethod ?? this.paymentMethod,
      paymentDate: paymentDate ?? this.paymentDate,
      concept: concept ?? this.concept,
      membershipId: membershipId ?? this.membershipId,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  List<Object?> get props => [
        id,
        userId,
        userName,
        amount,
        paymentMethod,
        paymentDate,
        concept,
        membershipId,
        createdAt,
      ];
}
