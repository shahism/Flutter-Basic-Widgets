import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Hey Poor People!",
            textAlign: TextAlign.center,
          ),
          foregroundColor: Colors.black,
          backgroundColor: Colors.lime,
          centerTitle: true,
        ),
        body: Center(
          child: Image.asset(
            "assets/bubble-gum-financial-growth.gif",
            width: 500,
          ),
        ),
        backgroundColor: Colors.amber,
      ),
    );
  }
}
