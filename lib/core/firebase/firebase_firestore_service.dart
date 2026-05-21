import 'package:cloud_firestore/cloud_firestore.dart';

/// Firestore service placeholder with common helpers.
class FirebaseFirestoreService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  FirebaseFirestoreService();

  CollectionReference collection(String path) => _firestore.collection(path);

  // Example: placeholder for listening to snapshots
  Stream<QuerySnapshot> streamCollection(String path) {
    return collection(path).snapshots();
  }
}
