import 'package:flutter/material.dart';

class stackApp extends StatefulWidget {
  const stackApp({Key? key}) : super(key: key);

  @override
  State<stackApp> createState() => _stackAppState();
}

class _stackAppState extends State<stackApp> {
  bool checkImage = false;

  Stack _buildStack() {
    return Stack(
      alignment: const Alignment(0.6, 0.6),
      children: [
        ClipOval(
          child: checkImage
              ? Image.asset(
                  "images/sh.jpg",
                  height: 400,
                  width: 500,
                  fit: BoxFit.contain,
                )
              : Image.asset(
                  "images/manan.jpg",
                  height: 400,
                  width: 500,
                  fit: BoxFit.contain,
                ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 70.0, top: 100.0),
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.black45,
            ),
            child: Text(
              checkImage? 'Shahzaneer Ahmed': 'Muhammad Manaan',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 90, top: 290),
          child: FlatButton(
              color: Colors.amber.shade300,
              onPressed: () {
                setState(() {
                  checkImage = checkImage? false : true;
                });
              },
              child: Text("Change")),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(child: _buildStack()),
        ),
      ),
    );
  }
}
