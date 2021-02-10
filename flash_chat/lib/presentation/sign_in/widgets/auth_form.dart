import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flash_chat/application/auth/signin_form/signin_form_bloc.dart';
import 'package:flash_chat/presentation/global_widgets/main_button.dart';
import 'package:flash_chat/presentation/global_widgets/styled_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthForm extends StatelessWidget {
  final SigninFormEvent formEvent;
  final Color color;
  final String buttonText;

  const AuthForm({
    @required this.buttonText,
    @required this.color,
    @required this.formEvent,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SigninFormBloc, SigninFormState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
          () => {},
          (either) => either.fold(
            (f) {
              FlushbarHelper.createError(
                  message: f.map(
                canceledByUser: (_) => 'Sign in was canceled!',
                serverError: (_) => 'Something went wrong!',
                emailAlreadyInUse: (_) => 'Email already in use!',
                wrongEmailAndPasswordCombination: (_) => 'Wrong email and password combination',
                weakPassword: (_) => 'Password is too weak!',
                invalidEmail: (_) => 'Invalid email!',
                tooManyRequests: (_) => 'Too many request!',
              )).show(context);
            },
            (_) {
              //TODO: Navigate
            },
          ),
        );
      },
      builder: (context, state) {
        return Form(
          autovalidateMode: state.showErrorMessages ? AutovalidateMode.always : AutovalidateMode.disabled,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Flexible(
                child: Hero(
                  tag: 'logo',
                  child: SizedBox(
                    height: 200.0,
                    child: Image.asset('images/logo.png'),
                  ),
                ),
              ),
              const SizedBox(
                height: 48.0,
              ),
              StyledTextField(
                handleOnChanged: (String text) =>
                    context.read<SigninFormBloc>().add(SigninFormEvent.emailChanged(text)),
                handleValidator: (_) =>
                    context.read<SigninFormBloc>().state.emailAddress.isValid ? null : 'Invalid email!',
                hintText: 'Enter your email',
                color: color,
              ),
              const SizedBox(
                height: 8.0,
              ),
              StyledTextField(
                hideText: true,
                handleOnChanged: (String text) =>
                    context.read<SigninFormBloc>().add(SigninFormEvent.passwordChanged(text)),
                handleValidator: (_) =>
                    context.read<SigninFormBloc>().state.password.isValid ? null : 'Password is too short!',
                hintText: 'Enter your password',
                color: color,
              ),
              const SizedBox(
                height: 24.0,
              ),
              MainButton(
                color: color,
                text: buttonText,
                handlePressed: () => context.read<SigninFormBloc>().add(formEvent),
              ),
              // const SizedBox(
              //   height: 8.0,
              // ),
              MainButton(
                color: Colors.white,
                text: 'Continue with Google',
                handlePressed: () => context.read<SigninFormBloc>().add(
                      const SigninFormEvent.signinWithGoogle(),
                    ),
                textColor: Colors.black,
              ),
            ],
          ),
        );
      },
    );
  }
}
