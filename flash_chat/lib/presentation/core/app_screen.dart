import 'package:flutter/material.dart';
import 'package:flash_chat/presentation/welcome_screen.dart';
import 'package:flash_chat/presentation/login_screen.dart';
import 'package:flash_chat/presentation/registration_screen.dart';
import 'package:flash_chat/presentation/chat_screen.dart';

class AppScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
