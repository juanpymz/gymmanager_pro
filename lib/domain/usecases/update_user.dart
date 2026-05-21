import '../repositories/user_repository.dart';
import '../entities/user_entity.dart';

/// Use case to update a user with business validation.
class UpdateUser {
  final UserRepository repository;

  UpdateUser(this.repository);

  Future<void> call(UserEntity user) async {
    // Add domain validations here
    await repository.updateUser(user);
  }
}
