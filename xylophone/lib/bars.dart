import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'dart:math';

class Bars extends StatefulWidget {
  @override
  _BarsState createState() => _BarsState();
}

class _BarsState extends State<Bars> {
  final List<AudioCache> _player =
      List(8).map((p) => p = AudioCache()).toList();

  @override
  void initState() {
    // _player.map((p) => p = AudioCache()).toList();
    print(_player.toString());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      width: double.maxFinite,
      height: double.maxFinite,
      child: Column(children: <Widget>[
        for (var i = 1; i < 8; i++)
          FlatButton(
            key: Key('bar$i'),
            padding: EdgeInsets.all(0),
            onPressed: () => _player[i].play('note$i.wav'),
            child: Container(
              color: Color.fromRGBO(Random().nextInt(256),
                  Random().nextInt(256), Random().nextInt(256), 1.0),
              height: 100.0,
            ),
          )
      ]),
    );
  }
}
