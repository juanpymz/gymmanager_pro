import '../entities/user_entity.dart';

/// Abstract repository for domain-level user operations.
abstract class UserRepository {
  Future<void> createUser(UserEntity user);
  Future<void> updateUser(UserEntity user);
  Future<void> deleteUser(String id); // logical delete
}
