import 'package:equatable/equatable.dart';

abstract class RoutineEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class LoadRoutines extends RoutineEvent {}
class CreateRoutineEvent extends RoutineEvent {
  final String title;
  final List<String> exercises;
  CreateRoutineEvent(this.title, this.exercises);
  @override
  List<Object?> get props => [title, exercises];
}
