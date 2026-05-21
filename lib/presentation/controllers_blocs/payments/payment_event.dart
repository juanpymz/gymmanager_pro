import 'package:equatable/equatable.dart';

abstract class PaymentEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class LoadPayments extends PaymentEvent {
  final String userId;
  LoadPayments(this.userId);
  @override
  List<Object?> get props => [userId];
}

class CreatePayment extends PaymentEvent {
  final String userId;
  final double amount;
  CreatePayment(this.userId, this.amount);
  @override
  List<Object?> get props => [userId, amount];
}
