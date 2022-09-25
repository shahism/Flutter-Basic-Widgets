import 'package:flutter/material.dart';

class columnApp extends StatelessWidget {
  const columnApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              myIconGreen,
              myIconGreen,
              myIconGreen,
              myIconBlack,
              myIconBlack,
              myIconBlack
            ],
          ),
        ),
      ),
    );
  }
}

//  Reusable Variables
var myIconGreen = const Icon(
  Icons.star,
  color: Colors.green,
);

var myIconBlack = const Icon(
  Icons.star,
  color: Colors.black,
);
