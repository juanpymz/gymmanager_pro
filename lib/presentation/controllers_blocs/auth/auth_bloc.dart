import 'package:flutter_bloc/flutter_bloc.dart';
import 'auth_event.dart';
import 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthUninitialized()) {
    on<AppStarted>((event, emit) async {
      emit(AuthLoading());
      await Future.delayed(const Duration(milliseconds: 300));
      emit(AuthUnauthenticated());
    });

    on<LoggedIn>((event, emit) => emit(AuthAuthenticated()));
    on<LoggedOut>((event, emit) => emit(AuthUnauthenticated()));
  }
}
