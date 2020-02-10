import 'package:flutter/material.dart';
import 'package:dicee_flutter/game_board.dart';
import 'package:flutter/services.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Color mainColor = Colors.green[900];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dice',
      home: Scaffold(
        backgroundColor: mainColor,
        appBar: AppBar(
          title: Center(child: Text('Dicee')),
          backgroundColor: mainColor,
        ),
        body: GameBoard(),
      ),
      color: mainColor,
    );
  }
}
