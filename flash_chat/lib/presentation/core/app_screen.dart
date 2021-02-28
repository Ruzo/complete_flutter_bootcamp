import 'package:flash_chat/application/auth/user/user_bloc.dart';
import 'package:flash_chat/injection.dart';
import 'package:flutter/material.dart';
import 'package:flash_chat/presentation/welcome_screen.dart';
import 'package:flash_chat/presentation/sign_in/login_screen.dart';
import 'package:flash_chat/presentation/sign_in/registration_screen.dart';
import 'package:flash_chat/presentation/chat_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<UserBloc>()..add(const UserEvent.getSignedInUser()),
        ),
      ],
      child: MaterialApp(
        title: 'FlashChat',
        initialRoute: WelcomeScreen.id,
        routes: {
          WelcomeScreen.id: (context) => WelcomeScreen(),
          LoginScreen.id: (context) => LoginScreen(),
          RegistrationScreen.id: (context) => RegistrationScreen(),
          ChatScreen.id: (context) => ChatScreen(),
        },
      ),
    );
  }
}
