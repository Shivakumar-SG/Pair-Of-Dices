import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int lDicenum = 1;
  int rDicenum = 1;

  void press() {
    lDicenum = Random().nextInt(6) + 1;
    rDicenum = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: FlatButton(
                  onPressed: () {
                    setState(
                      () {
                        press();
                      },
                    );
                  },
                  child: Image(
                    image: AssetImage('images/dice$lDicenum.png'),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: FlatButton(
                  onPressed: () {
                    setState(
                      () {
                        press();
                      },
                    );
                  },
                  child: Image(
                    image: AssetImage('images/dice$rDicenum.png'),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
