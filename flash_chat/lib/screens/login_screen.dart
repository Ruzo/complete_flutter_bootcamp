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
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Hero(
              tag: 'logo',
              child: Container(
                height: 200.0,
                child: Image.asset('images/logo.png'),
              ),
            ),
            SizedBox(
              height: 48.0,
            ),
            StyledTextField(
              handleOnChanged: (text) {},
              hintText: 'Enter your email',
              color: Colors.lightBlueAccent,
            ),
            SizedBox(
              height: 8.0,
            ),
            StyledTextField(
              handleOnChanged: (text) {},
              hintText: 'Enter your password',
              color: Colors.lightBlueAccent,
            ),
            SizedBox(
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
