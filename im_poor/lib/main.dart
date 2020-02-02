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
  AssetImage diamond;
  GifImage aniDiamond;

  @override
  void initState() {
    super.initState();
    controller = GifController(
      vsync: this,
      value: 62,
      duration: Duration(milliseconds: 1000),
      reverseDuration: Duration(milliseconds: 1000),
    );
    diamond = AssetImage('images/animated_diamond.gif');
    aniDiamond = GifImage(
      controller: controller,
      image: diamond,
    );
    controller.repeat(
        min: 64, max: 69, reverse: true, period: Duration(milliseconds: 1000));
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    precacheImage(diamond, context);
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
        child: Center(
          child: aniDiamond,
        ),
      ),
    );
  }
}
