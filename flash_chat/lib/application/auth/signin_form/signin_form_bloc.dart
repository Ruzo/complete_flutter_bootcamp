import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'signin_form_event.dart';
part 'signin_form_state.dart';

class SigninFormBloc extends Bloc<SigninFormEvent, SigninFormState> {
  SigninFormBloc() : super(SigninFormInitial());

  @override
  Stream<SigninFormState> mapEventToState(
    SigninFormEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
