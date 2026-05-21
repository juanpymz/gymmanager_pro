import 'package:equatable/equatable.dart';

abstract class RoutineState extends Equatable {
  @override
  List<Object?> get props => [];
}

class RoutinesInitial extends RoutineState {}
class RoutinesLoading extends RoutineState {}
class RoutinesLoaded extends RoutineState {
  final List<dynamic> routines;
  RoutinesLoaded(this.routines);
  @override
  List<Object?> get props => [routines];
}
