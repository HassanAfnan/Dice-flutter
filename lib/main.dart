import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text("Dicee"),
          backgroundColor: Colors.red,
        ),
        body: DiceePage(),
      ),
    ),
  );
}

class DiceePage extends StatefulWidget {
  @override
  _DiceePageState createState() => _DiceePageState();
}

class _DiceePageState extends State<DiceePage> {
  int LeftButton = 1;
  int RightButton = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            //flex: 2,
            child: FlatButton(
                onPressed: () {
                  setState(() {
                     RandNum();
                  });
                },
                child: Image.asset('images/dice$LeftButton.png')
            ),
          ),
          Expanded(
            //flex: 1,
            child: FlatButton(
                onPressed: () {
                  setState(() {
                    RandNum();
                  });
                },
                child: Image.asset('images/dice$RightButton.png')
            ),
          ),
        ],
      ),
    );
  }

  void RandNum(){
    LeftButton = Random().nextInt(6) + 1;
    RightButton = Random().nextInt(6) + 1;
  }
}

