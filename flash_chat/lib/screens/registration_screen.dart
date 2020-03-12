import 'package:flash_chat/widgets/main_button.dart';
import 'package:flash_chat/widgets/styled_textfield.dart';
import 'package:flutter/material.dart';

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
              color: Colors.blueAccent,
            ),
            SizedBox(
              height: 8.0,
            ),
            StyledTextField(
              handleOnChanged: (text) {},
              hintText: 'Enter your password',
              color: Colors.blueAccent,
            ),
            SizedBox(
              height: 24.0,
            ),
            MainButton(
              color: Colors.blueAccent,
              text: 'Register',
              handlePressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
