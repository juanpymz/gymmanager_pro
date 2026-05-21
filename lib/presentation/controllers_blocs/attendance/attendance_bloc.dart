import 'package:flutter_bloc/flutter_bloc.dart';
import 'attendance_event.dart';
import 'attendance_state.dart';

class AttendanceBloc extends Bloc<AttendanceEvent, AttendanceState> {
  AttendanceBloc() : super(AttendanceInitial()) {
    on<RegisterAttendanceEvent>((event, emit) async {
      emit(AttendanceLoading());
      await Future.delayed(const Duration(milliseconds: 200));
      emit(AttendanceRegistered());
    });

    on<LoadAttendanceHistory>((event, emit) async {
      emit(AttendanceLoading());
      await Future.delayed(const Duration(milliseconds: 200));
      emit(AttendanceHistoryLoaded([]));
    });
  }
}
