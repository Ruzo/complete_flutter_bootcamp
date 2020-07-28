part of 'signin_form_bloc.dart';

@freezed
abstract class SigninFormEvent with _$SigninFormEvent {
  const factory SigninFormEvent.signinWithEmailAndPasswordPressed() =
      SigninWithEmailAndPasswordPressed;
  const factory SigninFormEvent.registerWithEmailAndPasswordPressed() =
      RegisterWithEmailAndPasswordPressed;
  const factory SigninFormEvent.signinWithGoogle() = SigninWithGoogle;
  const factory SigninFormEvent.emailChanged(String emailStr) = EmailChanged;
  const factory SigninFormEvent.passwordChanged(String passwordStr) =
      PasswordChanged;
}
