import '../../domain/repositories/attendance_repository.dart';

/// Attendance repository implementation.
class AttendanceRepositoryImpl implements AttendanceRepository {
  AttendanceRepositoryImpl();

  @override
  Future<void> registerAttendance(String userId) async {
    // Placeholder: create attendance record
  }

  @override
  Future<List<dynamic>> fetchAttendanceHistory(String userId) async {
    // Placeholder
    return [];
  }
}
