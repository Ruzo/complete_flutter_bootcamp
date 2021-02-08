import 'package:flash_chat/presentation/login_screen.dart';
import 'package:flash_chat/presentation/registration_screen.dart';
import 'package:flash_chat/widgets/main_button.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class WelcomeScreen extends StatefulWidget {
  static const id = 'WelcomeScreen';

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation<Color> animation;
  ColorTween colorTween;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(vsync: this, duration: const Duration(milliseconds: 1000));
    colorTween = ColorTween(begin: Colors.blue, end: Colors.white);
    animation = colorTween.animate(controller)
      ..addListener(() {
        setState(() {});
      });

    controller.forward();

    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: animation.value,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Hero(
                  tag: 'logo',
                  child: SizedBox(
                    height: 60.0,
                    child: Image.asset('images/logo.png'),
                  ),
                ),
                TypewriterAnimatedTextKit(
                  speed: const Duration(milliseconds: 300),
                  totalRepeatCount: 1,
                  text: const ['Flash Chat'],
                  textStyle: const TextStyle(
                    fontSize: 42.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 48.0,
            ),
            MainButton(
              color: Colors.lightBlueAccent,
              text: 'Log In',
              handlePressed: () => Navigator.pushNamed(context, LoginScreen.id),
            ),
            MainButton(
              color: Colors.blueAccent,
              text: 'Register',
              handlePressed: () => Navigator.pushNamed(context, RegistrationScreen.id),
            ),
          ],
        ),
      ),
    );
  }
}
