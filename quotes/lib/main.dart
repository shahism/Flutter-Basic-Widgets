import 'package:flutter/material.dart';

void main() {
  runApp(const Quotes());
}

class Quotes extends StatefulWidget {
  const Quotes({Key? key}) : super(key: key);

  @override
  _QuotesState createState() => _QuotesState();
}

class _QuotesState extends State<Quotes> {

  List <String> wasifyat = ["Pakistan Noor hai aur Noor ko zawal nhi!",
    "Baat itni bhi khatarnaak nhi daman e amaal ger khaali hai  daman e rehmat tou bhara hua hai",
    "mera naam wasif ba safaa mera peer sayyed murtaza mera wird ahmad mujtaba main sadaa bhaar ki baat hun"
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.redAccent[800],
          title: Text("Saa'd ibne abi waqas RA"),
          centerTitle: true,
        ),
      body: Column(
        children: wasifyat.map((e) => Text(e)).toList(),
      //  .map fucntion exactly javascript k map function ki trh kaam krta hai .
      ),
      ),
    );
  }
}

