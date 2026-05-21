import 'package:flutter_bloc/flutter_bloc.dart';
import 'routine_event.dart';
import 'routine_state.dart';

class RoutineBloc extends Bloc<RoutineEvent, RoutineState> {
  RoutineBloc() : super(RoutinesInitial()) {
    on<LoadRoutines>((event, emit) async {
      emit(RoutinesLoading());
      await Future.delayed(const Duration(milliseconds: 200));
      emit(RoutinesLoaded([]));
    });

    on<CreateRoutineEvent>((event, emit) async {
      emit(RoutinesLoading());
      await Future.delayed(const Duration(milliseconds: 200));
      emit(RoutinesLoaded([]));
    });
  }
}
