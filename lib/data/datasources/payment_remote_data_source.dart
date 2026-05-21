import '../models/payment_model.dart';

class PaymentRemoteDataSource {
  Future<void> createPayment(PaymentModel payment) async {
    // Placeholder: write to Firestore
  }

  Future<List<PaymentModel>> fetchPaymentsForUser(String userId) async {
    // Placeholder: return empty
    return [];
  }
}
