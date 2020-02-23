import 'package:flutter/material.dart';

class EndMessage extends StatelessWidget {
  final int rightAnswers;
  final int wrongAnswers;
  final Function resetFunc;

  EndMessage(this.rightAnswers, this.wrongAnswers, this.resetFunc);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return Center(
        child: Container(
          color: Colors.white,
          width: double.maxFinite,
          height: constraints.maxHeight * .84,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    text: 'GAME OVER!\n\n',
                    style: TextStyle(
                        fontSize: 40.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                    children: [
                      TextSpan(
                        text: 'Right: $rightAnswers  ',
                        style: TextStyle(
                          fontSize: 30.0,
                          color: Colors.green,
                        ),
                      ),
                      TextSpan(
                        text: 'Wrong: $wrongAnswers',
                        style: TextStyle(
                          fontSize: 30.0,
                          color: Colors.red,
                        ),
                      ),
                    ]),
              ),
              Padding(
                padding: EdgeInsets.only(top: 50),
                child: FlatButton(
                  textColor: Colors.blueGrey,
                  color: Colors.blue,
                  child: Text(
                    'Play Again',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                  onPressed: () => resetFunc(),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
