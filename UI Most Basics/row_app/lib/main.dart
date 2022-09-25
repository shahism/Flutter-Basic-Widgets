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
            title: const Text('Abu Ubaidah Ibne Jarrah RA'),
            backgroundColor: Colors.lightGreen),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          // crossAxisAlignment: CrossAxisAlignment.end,
          //sbko neechay allign karega!
          crossAxisAlignment: CrossAxisAlignment.start,
          //sbko uper allign karega!

          children: <Widget>[
            Container(
              child: Text("Container-1"),
              color: Colors.amber,

            ),
            Container(
              child: Text("Container-2"),
              color: Colors.red,
              width: 78.0,
              height: 90.0,
            ),
            Container(
              child: Text("Container-3"),
              color: Colors.yellow,
            ),
            Container(
              child: Text("Container-4"),
              color: Colors.orange,
            ),
            FloatingActionButton(
                onPressed:(){},
              backgroundColor: Colors.green,

            ),
            // FloatingActionButton(
            //   onPressed:(){},
            //   backgroundColor: Colors.red,
            //
            // )


    ],
    ),
      ),
    );
  }
}




//pehlay row widget dena hai phir uski main aur cross axis alignment deni hai phir
// children property deni hai jo <widgets>[] (yani widgets ki list legi!)
