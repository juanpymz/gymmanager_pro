import 'package:flutter_bloc/flutter_bloc.dart';
import 'user_event.dart';
import 'user_state.dart';

/// Business logic component for Users (BLoC).
class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(UsersInitial()) {
    on<LoadUsers>((event, emit) async {
      emit(UsersLoading());
      // Placeholder: fetch users from usecase/repository
      await Future.delayed(const Duration(milliseconds: 400));
      emit(UsersLoaded([]));
    });

    on<CreateUser>((event, emit) async {
      emit(UsersLoading());
      // Placeholder: call usecase to register
      await Future.delayed(const Duration(milliseconds: 400));
      emit(UsersLoaded([]));
    });
  }
}
