import '../repositories/routine_repository.dart';

class CreateRoutine {
  final RoutineRepository repository;

  CreateRoutine(this.repository);

  Future<void> call(String title, List<String> exercises) async {
    // Placeholder business validations
    await repository.createRoutine(title, exercises);
  }
}
