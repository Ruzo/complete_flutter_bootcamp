import 'package:flash_chat/application/auth/signin_form/signin_form_bloc.dart';
import 'package:flash_chat/application/auth/user/user_bloc.dart';
import 'package:flash_chat/injection.dart';
import 'package:flash_chat/presentation/chat_screen.dart';
import 'package:flash_chat/presentation/sign_in/widgets/auth_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatefulWidget {
  static const id = 'LoginScreen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<UserBloc, UserState>(
      listener: (context, userState) {
        userState.when(
          initial: () {},
          authorized: (_) => Navigator.pushNamed(context, ChatScreen.id),
          unauthorized: () {},
        );
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: BlocProvider(
            create: (context) => getIt<SigninFormBloc>(),
            child: const AuthForm(
              buttonText: 'Log in',
              color: Colors.lightBlueAccent,
              formEvent: SigninFormEvent.signinWithEmailAndPasswordPressed(),
            ),
          ),
        ),
      ),
    );
  }
}
