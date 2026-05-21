import '../repositories/payment_repository.dart';

class RegisterPayment {
  final PaymentRepository repository;

  RegisterPayment(this.repository);

  Future<void> call(String userId, double amount) async {
    // Placeholder: implement business logic
    await repository.registerPayment(userId, amount);
  }
}
