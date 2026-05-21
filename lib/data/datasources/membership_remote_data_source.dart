import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/membership_model.dart';

class MembershipRemoteDataSource {
  final FirebaseFirestore firestore;
  MembershipRemoteDataSource(this.firestore);

  Future<MembershipModel> createMembership(MembershipModel model) async {
    // Placeholder
    return model;
  }

  Future<MembershipModel?> getById(String id) async {
    return null;
  }
}
