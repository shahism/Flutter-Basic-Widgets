import 'package:flutter/material.dart';

class MyInkWell extends StatefulWidget {
  const MyInkWell({Key? key}) : super(key: key);

  @override
  State<MyInkWell> createState() => _MyInkWellState();
}

class _MyInkWellState extends State<MyInkWell> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print("Tap detected!");
      },
      onTapCancel: () {
        print("You tap but cancelled it. Right? ");
      },
      splashColor: Colors.red,
      mouseCursor: MouseCursor.defer,
      child: Ink(
        width: 250,
        height: 200,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0), color: Colors.amber),
        child: const Center(
          child: Text("Shanzaneer Ahmed"),
        ),
      ),
    );
  }
}
