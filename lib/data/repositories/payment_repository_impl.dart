import '../../domain/repositories/payment_repository.dart';

/// Payment repository implementation.
class PaymentRepositoryImpl implements PaymentRepository {
  PaymentRepositoryImpl();

  @override
  Future<void> registerPayment(String userId, double amount) async {
    // Placeholder: create payment record and update receipts
  }

  @override
  Future<List<dynamic>> getPaymentsForUser(String userId) async {
    // Placeholder
    return [];
  }
}
