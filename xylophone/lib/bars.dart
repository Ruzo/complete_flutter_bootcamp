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
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      width: double.maxFinite,
      height: double.maxFinite,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          for (var i = 1; i < 8; i++)
            Expanded(
              child: FlatButton(
                key: Key('bar$i'),
                padding: EdgeInsets.all(0),
                onPressed: () => _player[i].play('note$i.wav'),
                child: Container(
                  color: Color.fromRGBO(Random().nextInt(256),
                      Random().nextInt(256), Random().nextInt(256), 1.0),
                ),
              ),
            )
        ],
      ),
    );
  }
}
