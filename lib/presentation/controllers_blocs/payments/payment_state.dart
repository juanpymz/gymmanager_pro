import 'package:equatable/equatable.dart';

abstract class PaymentState extends Equatable {
  @override
  List<Object?> get props => [];
}

class PaymentsInitial extends PaymentState {}
class PaymentsLoading extends PaymentState {}
class PaymentsLoaded extends PaymentState {
  final List<dynamic> payments;
  PaymentsLoaded(this.payments);
  @override
  List<Object?> get props => [payments];
}
class PaymentsError extends PaymentState {
  final String message;
  PaymentsError(this.message);
  @override
  List<Object?> get props => [message];
}
