import 'package:equatable/equatable.dart';

abstract class UserState extends Equatable {
  @override
  List<Object?> get props => [];
}

class UsersInitial extends UserState {}
class UsersLoading extends UserState {}
class UsersLoaded extends UserState {
  // Placeholder list
  final List<dynamic> users;
  UsersLoaded(this.users);

  @override
  List<Object?> get props => [users];
}
class UsersError extends UserState {
  final String message;
  UsersError(this.message);

  @override
  List<Object?> get props => [message];
}
