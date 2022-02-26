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
            title: const Text('Saad Ibne Abi Waqas RA'),
            backgroundColor: Colors.lightGreen),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,

        )
      ),
    );
  }
}




//pehlay row widget dena hai phir uski main aur cross axis alignment deni hai phir
// children property deni hai jo <widgets>[] (yani widgets ki list legi!)
