import 'package:equatable/equatable.dart';

abstract class AttendanceEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class RegisterAttendanceEvent extends AttendanceEvent {
  final String userId;
  RegisterAttendanceEvent(this.userId);
  @override
  List<Object?> get props => [userId];
}

class LoadAttendanceHistory extends AttendanceEvent {
  final String userId;
  LoadAttendanceHistory(this.userId);
  @override
  List<Object?> get props => [userId];
}
