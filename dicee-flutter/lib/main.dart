import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Dices'),
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
  int leftDice = 1;
  int rightDice = 6;
  String result = "";
  Random random = new Random();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(result,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 50)),
          Container(
            margin: new EdgeInsets.only(top: 50, bottom: 30),
            child: Row(
              children: [
                Expanded(
                  child: FlatButton(
                    onPressed: () {
                      setState(() {
                        leftDice = random.nextInt(6) + 1;
                      });
                    },
                    child: Image.asset('images/dice$leftDice.png'),
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    onPressed: () {
                      setState(() {
                        rightDice = random.nextInt(6) + 1;
                      });
                    },
                    child: Image.asset('images/dice$rightDice.png'),
                  ),
                )
              ],
            ),
          ),
          Container(
            child: FlatButton(
              onPressed: (() {
                setState(() {
                  leftDice = random.nextInt(6) + 1;
                  rightDice = random.nextInt(6) + 1;
                  result = leftDice + rightDice > 6 ? '大' : '小';
                });
              }),
              color: Colors.grey,
              child: Text(
                'Go',
                style: TextStyle(fontSize: 60, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
