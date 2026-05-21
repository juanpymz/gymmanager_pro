abstract class RoutineRepository {
  Future<void> createRoutine(String title, List<String> exercises);
  Future<void> updateRoutine(String id, String title, List<String> exercises);
  Future<void> deleteRoutine(String id);
  Future<List<dynamic>> listRoutines();
}
