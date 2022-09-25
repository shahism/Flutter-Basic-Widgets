import "package:flutter/material.dart";
import 'package:navigateroute_app/Routing/Utils/RouteNames.dart';

import 'Utils/Routes.dart';

class SimplePush extends StatelessWidget {
  const SimplePush({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: ScreenOne());
  }
}

class ScreenOne extends StatefulWidget {
  const ScreenOne({Key? key}) : super(key: key);

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Screen One"),
          backgroundColor: Colors.yellow.shade300,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, RouteNames.screenTwo ,
                arguments: {
                  // Arguments yun dene hain as a Map/Dictionary  (Key-Value Pair)
                  // yahan new Variable bana kr String Interpolation bhi use krskte hain hmm
                  "Name":"Shahzaneer",
                  "School":"Sacred Heart",
                  "College":"GCU",
                  "University":"CUI",
                  "Community":"FlutterISB",
                  "fellowship":"Bytewise",
                  // Integer to String
                  // 9:"Nine",
                  // different datatypes can be included in this way
                  // Routes():Container()
                }
                );
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Container(
                  width: double.infinity,
                  height: 50.0,
                  color: Colors.amber.shade900,
                  child: const Text("Screen One"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
