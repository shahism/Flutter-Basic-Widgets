import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home:Scaffold(
        appBar:AppBar(
          backgroundColor: Colors.lime,
          title: Text('The current Tech'),
        ) ,
        body: Center(
          child:Image(
            image: AssetImage('images/AI vs DS vs ML vs DL.png') ,
            ) ,
          ),
        )
    )
  );
}

