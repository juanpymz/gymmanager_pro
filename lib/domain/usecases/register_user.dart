import '../entities/user_entity.dart';
import '../repositories/user_repository.dart';

/// Use case responsible for registering users.
class RegisterUser {
  final UserRepository repository;

  RegisterUser(this.repository);

  Future<void> call(UserEntity user) async {
    // Business rules and validation may be placed here
    await repository.createUser(user);
  }
}
