import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home : Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text("Shahzaneer Ahmed"),

        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
            Container(
              height: 100.0,
              width: 100.0,
              color: Colors.yellow,
              child: Text("Container 1"),
            ),
            SizedBox(
              width: 30.0,
            ),
            Container(
              height: 100.0,
              width: 100.0,
              color: Colors.deepOrange,
              child: Text("Container 2"),
            ),
            Container(
              height: 100.0,
              width: 100.0,
              color: Colors.tealAccent,
              child: Text("Container 3"),
            ),
            Container(
              height: 100.0,
              width: 100.0,
              color: Colors.deepPurple,
              child: Text("Container 4"),
            ),

          ],),
        ),
      )
    );
  }
}

