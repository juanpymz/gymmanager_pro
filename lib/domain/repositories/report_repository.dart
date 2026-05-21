abstract class ReportRepository {
  Future<Map<String, dynamic>> generateMonthlyReport(int year, int month);
}
