import 'package:flash_chat/application/auth/signin_form/signin_form_bloc.dart';
import 'package:flash_chat/presentation/global_widgets/main_button.dart';
import 'package:flash_chat/presentation/global_widgets/styled_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SigninFormBloc, SigninFormState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Form(
          autovalidateMode: AutovalidateMode.onUserInteraction,
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
                    context.watch<SigninFormBloc>().add(SigninFormEvent.emailChanged(text)),
                handleValidator: (_) => context.watch<SigninFormBloc>().state.emailAddress.value.fold(
                      (f) => f.maybeMap(
                        invalidEmail: (_) => "Invalid email",
                        orElse: () => null,
                      ),
                      (_) => null,
                    ),
                hintText: 'Enter your email',
                color: Colors.lightBlueAccent,
              ),
              const SizedBox(
                height: 8.0,
              ),
              StyledTextField(
                handleOnChanged: (String text) =>
                    context.watch<SigninFormBloc>().add(SigninFormEvent.passwordChanged(text)),
                handleValidator: (_) => context.watch<SigninFormBloc>().state.password.value.fold(
                      (f) => f.maybeMap(
                        shortPassword: (_) => "Password too short!",
                        orElse: () => null,
                      ),
                      (_) => null,
                    ),
                hintText: 'Enter your password',
                color: Colors.lightBlueAccent,
              ),
              const SizedBox(
                height: 24.0,
              ),
              MainButton(
                color: Colors.lightBlueAccent,
                text: 'Log In',
                handlePressed: () {
                  context.watch<SigninFormBloc>().add(
                        const SigninFormEvent.signinWithEmailAndPasswordPressed(),
                      );
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
