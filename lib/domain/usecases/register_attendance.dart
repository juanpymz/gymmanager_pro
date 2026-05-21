import '../repositories/attendance_repository.dart';

/// Use case to register an attendance event.
class RegisterAttendance {
  final AttendanceRepository repository;

  RegisterAttendance(this.repository);

  Future<void> call(String userId) async {
    // Add business rules: e.g., check membership validity
    await repository.registerAttendance(userId);
  }
}
