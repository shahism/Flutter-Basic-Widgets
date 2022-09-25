
import 'package:first_custom_class/Quotes.dart';
import 'package:flutter/material.dart';

class ShahCard extends StatelessWidget {
  // const ShahCard({Key? key}) : super(key: key);
  final Quotes quote;
  final Function delete;

  ShahCard({required this.quote , required this.delete});

// We cannot use data in our stateless widgets but if we declare them final we can declare the variables
  @override
  Widget build(BuildContext context) {
     return Card(
      color: Colors.amberAccent,
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child:
        Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Text(quote.quote,
              style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.normal,
                  color: Colors.grey[600])),
          SizedBox(
            height: 20.0,
          ),
          Text(
            quote.author,
            textAlign: TextAlign.right,
            style: TextStyle(
              fontSize: 22.0,
              fontWeight: FontWeight.bold,
              color: Colors.grey[850],
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          FlatButton.icon(onPressed: delete,
              icon: Icon(Icons.delete),
              label: Text("delete quote")

          )
        ]),
      ),
    );
  }
}

