import '../../domain/repositories/routine_repository.dart';

/// Routine repository implementation.
class RoutineRepositoryImpl implements RoutineRepository {
  RoutineRepositoryImpl();

  @override
  Future<void> createRoutine(String title, List<String> exercises) async {
    // Placeholder: persist routine
  }

  @override
  Future<void> deleteRoutine(String id) async {
    // Placeholder
  }

  @override
  Future<List<dynamic>> listRoutines() async {
    return [];
  }

  @override
  Future<void> updateRoutine(String id, String title, List<String> exercises) async {
    // Placeholder
  }
}
