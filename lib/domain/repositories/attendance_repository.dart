abstract class AttendanceRepository {
  Future<void> registerAttendance(String userId);
  Future<List<dynamic>> fetchAttendanceHistory(String userId);
}
