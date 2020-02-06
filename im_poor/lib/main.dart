import 'package:flutter/material.dart';
import 'package:flutter_gifimage/flutter_gifimage.dart';

main(List<String> args) => runApp(MaterialApp(
      home: Iam(),
    ));

class Iam extends StatefulWidget {
  const Iam({Key key}) : super(key: key);
  _Iam createState() => _Iam();
}

class _Iam extends State<Iam> with TickerProviderStateMixin {
  GifController controller;
  AssetImage _diamond;
  GifImage aniDiamond;
  int tapCount = 0;
  final List<String> messages = [
    "Poor",
    "Working very hard!",
    "Fighting corruption!",
    "RICH!"
  ];
  String _message;

  @override
  void initState() {
    super.initState();
    controller = GifController(
      vsync: this,
      duration: Duration(milliseconds: 1000),
      reverseDuration: Duration(milliseconds: 1000),
    );
    _diamond = AssetImage('images/animated_diamond.gif');
    aniDiamond = GifImage(
      controller: controller,
      image: _diamond,
    );
    _message = messages[0];
    startLoop();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    precacheImage(_diamond, context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('I AM...')),
        backgroundColor: Colors.blueGrey,
      ),
      body: Container(
        color: Color.fromRGBO(2, 25, 43, 1),
        child: Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.only(top: 40)),
            Text(
              _message,
              style: TextStyle(color: Colors.white, fontSize: 44),
            ),
            Padding(padding: EdgeInsets.only(top: 40)),
            GestureDetector(
              onTap: () => tapAction(),
              child: Center(
                child: aniDiamond,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void tapAction() {
    switch (tapCount) {
      case 0:
      case 1:
        tapCount++;
        setState(() => _message = messages[tapCount]);
        openPartially();
        break;
      case 2:
        tapCount++;
        setState(() => _message = messages[tapCount]);
        openCompletely();
        break;
      default:
        break;
    }
  }

  void startLoop() => controller.repeat(
        min: 64,
        max: 69,
        reverse: true,
        period: Duration(milliseconds: 1000),
      );

  void openPartially() => controller
      .animateTo(
        78,
      )
      .then((_) => controller
          .animateBack(
            64,
          )
          .then((_) => startLoop()));

  void openCompletely() {
    controller.value = 27;
    controller.animateTo(44).then((_) => controller.repeat(
        min: 38, max: 44, reverse: true, period: Duration(milliseconds: 500)));
  }
}
