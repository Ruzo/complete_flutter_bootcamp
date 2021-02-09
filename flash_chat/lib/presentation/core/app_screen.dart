import 'package:flutter/material.dart';
import 'package:flash_chat/presentation/welcome_screen.dart';
import 'package:flash_chat/presentation/sign_in/login_screen.dart';
import 'package:flash_chat/presentation/sign_in/registration_screen.dart';
import 'package:flash_chat/presentation/chat_screen.dart';

class AppScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlashChat',
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        ChatScreen.id: (context) => ChatScreen(),
      },
    );
  }
}
