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
          backgroundColor: Colors.teal,
          title: Text("Shahzaneer Ahmed"),
          centerTitle: true,
        ),
        body: Center(
          child: Image.asset("Assets/profile.jpeg"),

        ),
      ),
      );

  }



}



// Images

// Image.asset("Assets/profile.jpeg")
//iski bajaye we can also use this thing in another way
// child: Image( image: AssetImage('Assets/profile.jpeg'),
//   image: NetworkImage(
//       'https://image.shutterstock.com'),
// //  yahan per single quotes main link dene se image namodaar hogi!

// Icons

// Icon(Icons.account_circle_sharp,
// color: Colors.deepOrange,
// size: 300.0,
// ),

// Raised button  (depriciated)

// child: RaisedButton(
// onPressed: (){
// print('Shahzaneer Ahmed');
//
// },
// color: Colors.tealAccent,
// child: Text("Click"),
//
//
// )

//Flat button

// body: Center(
// child: FlatButton(
// onPressed: (){},
// color: Colors.yellow,
// child: Text('tap me'),
// ),


//Raised button with icons

// RaisedButton.icon(
// onPressed: (){},
// icon: Icon(Icons.mail_outline_rounded),
// color: Colors.lightGreenAccent,
// label: Text("Mail me"),
// ),


//icon button is an icon that is pressable!

// child: IconButton(
// onPressed: (){},
// icon: Icon(Icons.add_photo_alternate,
// color: Colors.deepPurpleAccent,
// ),
// )