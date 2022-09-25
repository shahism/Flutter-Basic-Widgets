import 'package:flutter/material.dart';

class rowApp extends StatelessWidget {
  const rowApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
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
