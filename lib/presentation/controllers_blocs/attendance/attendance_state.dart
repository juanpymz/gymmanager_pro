import 'package:equatable/equatable.dart';

abstract class AttendanceState extends Equatable {
  @override
  List<Object?> get props => [];
}

class AttendanceInitial extends AttendanceState {}
class AttendanceLoading extends AttendanceState {}
class AttendanceRegistered extends AttendanceState {}
class AttendanceHistoryLoaded extends AttendanceState {
  final List<dynamic> history;
  AttendanceHistoryLoaded(this.history);
  @override
  List<Object?> get props => [history];
}
