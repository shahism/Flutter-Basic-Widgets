import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  //Exapnded widget --> iska kaam yeh hai k jo bhi available space ho uske mutabiq apne apne child ko dhaal leta hai

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter is awesome"),
          backgroundColor: Colors.orange,
          centerTitle: true,
        ),
        body: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            //this image will make the UI collapse without expanded widget
            Expanded(child: Image.asset("Assets/ghumbadekhazra.jpeg")),
            //with the use of expanded widget it got adjusted in the corner!
            

            Expanded(
              flex: 3,
              child: Container(
                color: Colors.pinkAccent,
                child: Text("1"),
                padding: EdgeInsets.all(30.0),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.purple,
                child: Text("2"),
                padding: EdgeInsets.all(30.0),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.lightBlueAccent,
                child: Text("3"),
                padding: EdgeInsets.all(30.0),
              ),
            )
          ],
        ),
      ),
    );
  }
}


//na srff yeh expanded widget jo hai wo hamain kam space main bhi expand krne ki facility deta hai