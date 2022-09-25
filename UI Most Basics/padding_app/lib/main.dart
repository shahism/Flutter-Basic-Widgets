import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Shahzaneer Ahmed'),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: Container(
          child: const Text('Hello World'),

          color: Colors.yellow,
        ),
      ),
    );
  }
}


//! margin widgets
//we also have a padding widget but i \t doesn't allow margin in it.

// padding: EdgeInsets.symmetric(vertical: 30.0,horizontal: 30.0),
//padding controls the spacing inside the container
// margin: EdgeInsets.symmetric(vertical: 70.0,horizontal: 90.0),
//margin controls the spacing outside the container
