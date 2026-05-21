abstract class PaymentRepository {
  Future<void> registerPayment(String userId, double amount);
  Future<List<dynamic>> getPaymentsForUser(String userId);
}
