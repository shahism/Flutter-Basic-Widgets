import 'package:first_custom_class/Quotes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key); //this is the constructor of class

  List<Quotes> quotes = [
    Quotes(author: "Wasif Ali Wasif", quote: "Talab Sadiq uski hoti hai jisse nawazna ho"),
    Quotes(author: "Shakespeare", quote: "All that glitters is not gold"),
    Quotes(author: "Ashfaq Ahmed", quote: "Insan jo bantta hai Allah usse wo aur deta hai phir chahay wo dolat ho izzat ho ya asaanian!")
  ];
  // Quotes class banaye jismay quote hamara widget bn gya taqreebn.

  // we can also make our custom Cards! 
  //* Dart functions
  // returnType functionName (parameter){
// body
  // }

  Widget ShahCard(dynamic quote){
    return Card(
      color: Colors.amberAccent,
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(quote.quote,
            style : TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.normal,
              color: Colors.grey[600]
            )
            ),
            SizedBox(height: 20.0,),

            Text(quote.author,
            textAlign: TextAlign.right,
            style: TextStyle(
              fontSize: 22.0,
              fontWeight: FontWeight.bold,
              color: Colors.grey[850],
            ),
            
            )
          ]),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text("First Class Quotes"),
            backgroundColor: Colors.cyan[300],
          ),
          body: Column(
            // children: quotes.map((e) => Text('${e.quote} -  ${e.author}')).toList(),
            children: quotes.map((e) => ShahCard(e) ).toList(),
            
            
          )),
    );
  }
}
