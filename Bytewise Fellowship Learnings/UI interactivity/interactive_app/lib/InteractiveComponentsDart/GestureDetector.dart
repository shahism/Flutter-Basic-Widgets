import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class MyGestureDetector extends StatefulWidget {
  const MyGestureDetector({Key? key}) : super(key: key);

  @override
  State<MyGestureDetector> createState() => _MyGestureDetectorState();
}

class _MyGestureDetectorState extends State<MyGestureDetector> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: (){
        Alert(
          context: context,
          title: "double tap Detected",
          desc: "Why are you double tapping it?",
          style: const AlertStyle(
              animationType: AnimationType.grow,
              backgroundColor: Colors.orange,
              titleStyle: TextStyle(color: Colors.white),
              descStyle:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.grey)),
        ).show();
      },
      onLongPress: (){
         Alert(
          context: context,
          title: "Long Press Detected",
          desc: "Why are you Pressing it long?",
          style: const AlertStyle(
              animationType: AnimationType.grow,
              backgroundColor: Colors.amber,
              titleStyle: TextStyle(color: Colors.white),
              descStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey)),
        ).show();
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular( 12),
          color: Colors.amber
        ),
        child: const Text("Shahzaneer Ahmed",)
      ),
    );
  }
}
