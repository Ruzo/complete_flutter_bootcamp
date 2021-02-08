import 'package:firebase_auth/firebase_auth.dart';
import 'package:flash_chat/widgets/main_button.dart';
import 'package:flash_chat/widgets/styled_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flash_chat/utils/api.dart';

class RegistrationScreen extends StatefulWidget {
  static const id = 'RegistrationScreen';

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  String email;
  String password;
  API api = API();
  User user;

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
              keyboardType: TextInputType.emailAddress,
              handleOnChanged: (text) {
                setState(() {
                  email = text.toString();
                });
              },
              hintText: 'Enter your email',
              color: Colors.blueAccent,
            ),
            const SizedBox(
              height: 8.0,
            ),
            StyledTextField(
              hideText: true,
              handleOnChanged: (text) {
                setState(() {
                  password = text.toString();
                });
              },
              hintText: 'Enter your password',
              color: Colors.blueAccent,
            ),
            const SizedBox(
              height: 24.0,
            ),
            MainButton(
              color: Colors.blueAccent,
              text: 'Register',
              handlePressed: () async {
                debugPrint('$email - $password');
                // final User newUser = await api.registerUserByEmail(email, password);
                setState(() {
                  // user = newUser;
                });
                debugPrint(user.toString());
              },
            ),
          ],
        ),
      ),
    );
  }
}
