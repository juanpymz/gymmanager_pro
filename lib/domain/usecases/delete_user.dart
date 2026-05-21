import '../repositories/user_repository.dart';

/// Use case for logical deletion of a user.
class DeleteUser {
  final UserRepository repository;

  DeleteUser(this.repository);

  Future<void> call(String userId) async {
    // Business rule: mark user as inactive
    await repository.deleteUser(userId);
  }
}
