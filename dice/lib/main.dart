import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text('Dice'),
        backgroundColor: Colors.red,
      ),
      body: DicePage(),
    ),
  ));
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 0;
  int rightDiceNumber = 0;

  void setRandomNumber() {
    setState() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(
      children: <Widget>[
        Expanded(
          child: TextButton(
              onPressed: () {
                setRandomNumber();
              },
              child:
                  Image(image: AssetImage('images/dice$leftDiceNumber.png'))),
        ),
        Expanded(
            child: TextButton(
                onPressed: () {
                  setRandomNumber();
                },
                child:
                    Image(image: AssetImage('images/$rightDiceNumber.png')))),
      ],
    ));
  }
}
