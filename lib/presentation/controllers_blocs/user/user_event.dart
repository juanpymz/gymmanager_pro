import 'package:equatable/equatable.dart';

abstract class UserEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class LoadUsers extends UserEvent {}

class CreateUser extends UserEvent {
  final String email;
  final String name;

  CreateUser({required this.email, required this.name});

  @override
  List<Object?> get props => [email, name];
}
