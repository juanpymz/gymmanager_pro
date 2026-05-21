import 'package:flutter_bloc/flutter_bloc.dart';
import 'payment_event.dart';
import 'payment_state.dart';

class PaymentBloc extends Bloc<PaymentEvent, PaymentState> {
  PaymentBloc() : super(PaymentsInitial()) {
    on<LoadPayments>((event, emit) async {
      emit(PaymentsLoading());
      await Future.delayed(const Duration(milliseconds: 300));
      emit(PaymentsLoaded([]));
    });

    on<CreatePayment>((event, emit) async {
      emit(PaymentsLoading());
      await Future.delayed(const Duration(milliseconds: 300));
      emit(PaymentsLoaded([]));
    });
  }
}
