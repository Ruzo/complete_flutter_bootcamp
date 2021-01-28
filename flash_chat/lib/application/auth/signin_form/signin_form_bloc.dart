import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flash_chat/domain/auth/auth_failures.dart';
import 'package:flash_chat/domain/auth/i_auth_facade.dart';
import 'package:flash_chat/domain/auth/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'signin_form_event.dart';
part 'signin_form_state.dart';

part 'signin_form_bloc.freezed.dart';

class SigninFormBloc extends Bloc<SigninFormEvent, SigninFormState> {
  SigninFormBloc() : super(SigninFormState.initial());
  IAuthFacade _authFacade;

  @override
  Stream<SigninFormState> mapEventToState(
    SigninFormEvent event,
  ) async* {
    yield* event.map(
      signinWithEmailAndPasswordPressed: (e) async* {
        emailAndPasswordEventToState(_authFacade.signinWithEmailAndPassword);
      },
      registerWithEmailAndPasswordPressed: (e) async* {
        emailAndPasswordEventToState(_authFacade.registerWithEmailAndPassword);
      },
      signinWithGoogle: (e) async* {
        yield state.copyWith(
          isSubmitting: true,
          authFailureOrSuccessOption: none(),
        );

        final Either<AuthFailure, Unit> successOrFailure = await _authFacade.signinWithGoogle();

        yield state.copyWith(
          isSubmitting: false,
          authFailureOrSuccessOption: some(successOrFailure),
        );
      },
      emailChanged: (e) async* {
        yield state.copyWith(
          emailAddress: EmailAddress(e.emailStr),
          authFailureOrSuccessOption: none(),
        );
      },
      passwordChanged: (e) async* {
        yield state.copyWith(
          password: Password(e.passwordStr),
          authFailureOrSuccessOption: none(),
        );
      },
    );
  }

  Stream<SigninFormState> emailAndPasswordEventToState(
    Future<Either<AuthFailure, Unit>> Function({
      @required EmailAddress emailAddress,
      @required Password password,
    })
        authFacade,
  ) async* {
    Either<AuthFailure, Unit> failureOrSuccess;
    final bool validEntries = state.emailAddress.isValid && state.password.isValid;

    if (validEntries) {
      yield state.copyWith(
        isSubmitting: true,
        authFailureOrSuccessOption: none(),
      );
      failureOrSuccess = await authFacade(
        emailAddress: state.emailAddress,
        password: state.password,
      );
    }

    yield state.copyWith(
      isSubmitting: false,
      showErrorMessages: true,
      authFailureOrSuccessOption: optionOf(failureOrSuccess),
    );
  }
}
