import 'package:flash_chat/application/auth/signin_form/signin_form_bloc.dart';
import 'package:flash_chat/injection.dart';
import 'package:flash_chat/presentation/sign_in/widgets/auth_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegistrationScreen extends StatefulWidget {
  static const id = 'RegistrationScreen';

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: BlocProvider(
          create: (context) => getIt<SigninFormBloc>(),
          child: const AuthForm(
            buttonText: 'Register',
            color: Colors.blueAccent,
            formEvent: SigninFormEvent.registerWithEmailAndPasswordPressed(),
          ),
        ),
      ),
    );
  }
}
