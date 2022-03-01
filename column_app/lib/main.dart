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

        //!one thing is important k nesting jitni merzi krni chaho krsktay ho!
        //  aik column main rows aaskte hain aik row main columns aasktay hain !
        body: Column(
          // column ka main axis is vertical aur cross axis is horizontal
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              color: Colors.blue,
              padding: EdgeInsets.all(30.0),
              child: Text('col-1'),
            ),
            Container(
              color: Colors.pinkAccent,
              padding: EdgeInsets.all(40.0),
              child: Text('col-2'),
            ),
            Container(
              color: Colors.greenAccent[700],
              padding: EdgeInsets.all(50.0),
              child: Text('col-3'),
            )
          ],
        )
      ),
    );
  }
}


