import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc() : super(AuthenticationInitial());

  @override
  Stream<AuthenticationState> mapEventToState(
    AuthenticationEvent event,
  ) async* {
    if (event is AuthenticateEvent) {
      yield AuthenticationInitial();
      try {
        if (true) {
          await Future.delayed(Duration(seconds: 3));
          yield AuthenticatedState();
        } else {
          yield UnAuthenticatedState();
        }
      } catch (e) {
        yield AuthenticationErrorStete();
      }
    }
  }
}
