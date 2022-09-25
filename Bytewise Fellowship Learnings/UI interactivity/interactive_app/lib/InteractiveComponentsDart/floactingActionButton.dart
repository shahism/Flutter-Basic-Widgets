import 'package:flutter/material.dart';

class MyFloatingActionButton extends StatefulWidget {
  const MyFloatingActionButton({Key? key}) : super(key: key);

  @override
  State<MyFloatingActionButton> createState() => _MyFloatingActionButtonState();
}

class _MyFloatingActionButtonState extends State<MyFloatingActionButton> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      label: Text("Let's Explore"),
      icon: Icon(Icons.data_exploration_sharp),
      onPressed: () {
        print("you printed it");
      },
      backgroundColor: Colors.pink,
    );
  }
}
