import 'package:first_custom_class/Quotes.dart';
import 'package:flutter/material.dart';
import 'ShahCard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //this is the constructor of class


  List<Quotes> quotes = [
    Quotes(
        author: "Wasif Ali Wasif",
        quote: "Talab Sadiq uski hoti hai jisse nawazna ho"),
    Quotes(
        author: "Shakespeare", quote: "There is divinity that shapes our ends"),
    Quotes(
        author: "Ashfaq Ahmed",
        quote:
            "Insan jo bantta hai Allah usse wo aur deta hai phir chahay wo dolat ho izzat ho ya asaanian!")
  ];

  // Quotes class banaye jismay quote hamara widget bn gya taqreebn.
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
          children:
          quotes.map((quote) => ShahCard(
                  quote: quote,
                  delete: () {
                    setState(() {
                      quotes.remove(quote);
                    });
                  }))
              .toList(),
        ),
      ),
    );
  }
}
