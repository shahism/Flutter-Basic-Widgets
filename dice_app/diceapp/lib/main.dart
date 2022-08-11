import 'package:flutter/material.dart';
import "dart:math";

void main() {
  runApp(const DiceApp());
}

class DiceApp extends StatefulWidget {
  const DiceApp({Key? key}) : super(key: key);

  @override
  State<DiceApp> createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  // This widget is the root of your application.
  // ! Code yahan se shuru krna hai!
  int leftImgNumber = 1;
  int rightImgNumber = 1;

  void rollDice() {
    leftImgNumber = Random().nextInt(6) + 1;
    rightImgNumber = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red.shade400,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text(
            "Let's Rotate the Dice",
            style: TextStyle(
                color: Colors.yellow.shade400,
                fontSize: 20.0,
                fontFamily: "opensans"),
          ),
        ),
        body: Center(
          child: Row(
            children: [
              Expanded(
                child: FlatButton(
                  child: Image.asset("images/dice$leftImgNumber.png"),
                  onPressed: () {
                    setState(() {
                      rollDice();
                    });
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  child: Image.asset("images/dice$rightImgNumber.png"),
                  onPressed: () {
                    setState(() {
                      rollDice();
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



//* Set State aik variable ki value ko tamaam build function main replace kr k build krta hai!
// * Hot reload krna hoga iscase main


// Method for generating Random Values
