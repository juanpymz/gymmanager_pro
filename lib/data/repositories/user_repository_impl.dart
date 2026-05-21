import '../../domain/entities/user_entity.dart';
import '../../domain/repositories/user_repository.dart';

/// Implementation of the UserRepository that coordinates datasources.
class UserRepositoryImpl implements UserRepository {
  // final UserRemoteDataSource remote;

  UserRepositoryImpl();

  @override
  Future<void> createUser(UserEntity user) async {
    // Placeholder: call remote datasource
  }

  @override
  Future<void> updateUser(UserEntity user) async {
    // Placeholder
  }

  @override
  Future<void> deleteUser(String id) async {
    // Placeholder
  }
}
