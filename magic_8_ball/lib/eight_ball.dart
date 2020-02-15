import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:async';

class EightBall extends StatefulWidget {
  @override
  _EightBallState createState() => _EightBallState();
}

class _EightBallState extends State<EightBall> {
  int _answer = 1;
  bool _blankBall = true;
  List<ImageProvider> _images = List(6);

  @override
  void initState() {
    for (var i = 0; i < 6; i++) {
      _images[i] = AssetImage('images/ball$i.png');
    }
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    for (var i = 0; i < 6; i++) {
      precacheImage(_images[i], context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlatButton(
        child: Container(
          color: Colors.black,
          width: double.maxFinite,
          height: 400.0,
          child: AnimatedCrossFade(
            duration: Duration(seconds: 2),
            firstChild: Image(
              image: _images[0],
            ),
            secondChild: Image(
              image: _images[_answer],
              fit: BoxFit.fitWidth,
            ),
            crossFadeState: _blankBall
                ? CrossFadeState.showFirst
                : CrossFadeState.showSecond,
          ),
        ),
        onPressed: () => getAnswer(),
      ),
    );
  }

  getAnswer() {
    print(_blankBall);
    if (_blankBall == false) {
      setState(() {
        _blankBall = true;
      });
      Timer(Duration(seconds: 2), () => displayAnswer());
    } else
      displayAnswer();
  }

  void displayAnswer() {
    return setState(() {
      _answer = Random().nextInt(5) + 1;
      _blankBall = false;
    });
  }
}
