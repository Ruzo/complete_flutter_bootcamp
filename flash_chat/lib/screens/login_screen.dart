import 'package:flash_chat/widgets/main_button.dart';
import 'package:flash_chat/widgets/styled_textfield.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  static const id = 'LoginScreen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
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
              handleOnChanged: (text) {},
              hintText: 'Enter your email',
              color: Colors.lightBlueAccent,
            ),
            const SizedBox(
              height: 8.0,
            ),
            StyledTextField(
              handleOnChanged: (text) {},
              hintText: 'Enter your password',
              color: Colors.lightBlueAccent,
            ),
            const SizedBox(
              height: 24.0,
            ),
            MainButton(
              color: Colors.lightBlueAccent,
              text: 'Log In',
              handlePressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
