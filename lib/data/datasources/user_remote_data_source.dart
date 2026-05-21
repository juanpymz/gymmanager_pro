import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/user_model.dart';

/// Remote data source interacting with Firestore for Users.
class UserRemoteDataSource {
  final FirebaseFirestore _firestore;

  UserRemoteDataSource(this._firestore);

  Future<UserModel> createUser(UserModel user) async {
    // Placeholder: simulate writing to Firestore
    // final doc = await _firestore.collection('users').add(user.toMap());
    // return user.copyWith(id: doc.id);
    return user;
  }

  Future<UserModel?> getUserById(String id) async {
    // Placeholder
    return null;
  }

  Future<void> updateUser(UserModel user) async {
    // Placeholder
  }

  Future<void> logicalDeleteUser(String id) async {
    // Placeholder: set isActive=false
  }
}
