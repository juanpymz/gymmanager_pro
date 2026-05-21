import '../entities/membership_entity.dart';

abstract class MembershipRepository {
  Future<void> createMembership(MembershipEntity membership);
  Future<void> updateMembership(MembershipEntity membership);
  Future<MembershipEntity?> getMembershipById(String id);
}
