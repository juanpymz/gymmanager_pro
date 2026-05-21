import '../repositories/membership_repository.dart';

/// Use case to validate a membership for a user.
class ValidateMembership {
  final MembershipRepository repository;

  ValidateMembership(this.repository);

  Future<bool> call(String membershipId) async {
    // Placeholder: check expiry, payments, etc.
    return true;
  }
}
