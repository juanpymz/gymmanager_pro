import 'package:cloud_firestore/cloud_firestore.dart';

/// Payment model placeholder
class PaymentModel {
  final String id;
  final String userId;
  final double amount;
  final DateTime date;

  PaymentModel({required this.id, required this.userId, required this.amount, required this.date});

  factory PaymentModel.fromDocument(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>? ?? {};
    return PaymentModel(
      id: doc.id,
      userId: data['userId'] ?? '',
      amount: (data['amount'] ?? 0).toDouble(),
      date: DateTime.tryParse(data['date'] ?? '') ?? DateTime.now(),
    );
  }

  Map<String, dynamic> toMap() => {
        'userId': userId,
        'amount': amount,
        'date': date.toIso8601String(),
      };
}
/// Modelo de datos para los pagos del gimnasio.
///
/// [PaymentModel] extiende [PaymentEntity] y proporciona la capa de
/// serialización necesaria para interactuar con Cloud Firestore.
/// Maneja correctamente las conversiones de tipos entre Dart y Firestore.
library;

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:gym_manager_pro/domain/entities/payment_entity.dart';

/// Modelo de pago para la capa de datos.
///
/// Encapsula la lógica de conversión entre documentos de Firestore
/// y la entidad [PaymentEntity] del dominio. Garantiza que los montos
/// se manejen correctamente como [double] y las fechas como [Timestamp].
class PaymentModel extends PaymentEntity {
  /// Constructor principal del modelo de pago.
  const PaymentModel({
    required super.id,
    required super.userId,
    required super.membershipId,
    required super.amount,
    required super.paymentDate,
    required super.paymentMethod,
    required super.createdAt,
  });

  /// Crea un [PaymentModel] desde un mapa de documento de Firestore.
  ///
  /// [map] contiene los campos del documento.
  /// [id] es el identificador único del documento en Firestore.
  ///
  /// El campo [amount] se convierte desde [num] para soportar tanto
  /// valores enteros como decimales almacenados en Firestore.
  factory PaymentModel.fromMap(Map<String, dynamic> map, String id) {
    return PaymentModel(
      id: id,
      userId: map['userId'] as String? ?? '',
      membershipId: map['membershipId'] as String? ?? '',
      amount: (map['amount'] as num?)?.toDouble() ?? 0.0,
      paymentDate: _timestampToDateTime(map['paymentDate']),
      paymentMethod: map['paymentMethod'] as String? ?? '',
      createdAt: _timestampToDateTime(map['createdAt']),
    );
  }

  /// Crea un [PaymentModel] desde una entidad de dominio [PaymentEntity].
  ///
  /// Facilita la conversión cuando se necesita enviar datos desde
  /// la capa de presentación/dominio hacia Firestore.
  factory PaymentModel.fromEntity(PaymentEntity entity) {
    return PaymentModel(
      id: entity.id,
      userId: entity.userId,
      membershipId: entity.membershipId,
      amount: entity.amount,
      paymentDate: entity.paymentDate,
      paymentMethod: entity.paymentMethod,
      createdAt: entity.createdAt,
    );
  }

  /// Convierte el modelo a un mapa compatible con Firestore.
  ///
  /// Las fechas se serializan como [Timestamp] y el monto como [double].
  /// El [id] se excluye del mapa porque se utiliza como ID del documento.
  Map<String, dynamic> toMap() {
    return {
      'userId': userId,
      'membershipId': membershipId,
      'amount': amount,
      'paymentDate': Timestamp.fromDate(paymentDate),
      'paymentMethod': paymentMethod,
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
