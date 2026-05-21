import '../repositories/report_repository.dart';

/// Use case to generate reports aggregating payments and attendance.
class GenerateReport {
  final ReportRepository repository;

  GenerateReport(this.repository);

  Future<Map<String, dynamic>> call(int year, int month) async {
    // Placeholder orchestration of domain logic
    return await repository.generateMonthlyReport(year, month);
  }
}
