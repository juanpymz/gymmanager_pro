import '../core/firebase/firebase_auth_service.dart';
import '../core/firebase/firebase_firestore_service.dart';
import '../core/firebase/firebase_storage_service.dart';

/// Repository aggregating Firebase services.
class FirebaseRepository {
  final FirebaseAuthService auth;
  final FirebaseFirestoreService firestore;
  final FirebaseStorageService storage;

  FirebaseRepository({required this.auth, required this.firestore, required this.storage});

  // Placeholder helper: get users collection ref
  dynamic usersCollection() => firestore.collection('users');
}
