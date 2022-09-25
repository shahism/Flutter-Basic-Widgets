import 'package:flutter/material.dart';
import 'package:interactive_app/InteractiveComponentsDart/GestureDetector.dart';
import 'package:interactive_app/InteractiveComponentsDart/Inkwell.dart';
import 'package:interactive_app/InteractiveComponentsDart/MySlider.dart';
import 'package:interactive_app/InteractiveComponentsDart/Radio.dart';
import 'package:interactive_app/InteractiveComponentsDart/TextField.dart';
import 'package:interactive_app/InteractiveComponentsDart/checkbox.dart';
import 'package:interactive_app/InteractiveComponentsDart/dropDownButton.dart';
import 'package:interactive_app/InteractiveComponentsDart/floactingActionButton.dart';
import 'package:interactive_app/InteractiveComponentsDart/switch.dart';
import 'package:interactive_app/InteractiveComponentsDart/textButton.dart';
import 'package:interactive_app/Ravi/LoginScreen.dart';

void main() {
  runApp(const RaviApp());
}

class MyInteractiveApp extends StatefulWidget {
  const MyInteractiveApp({Key? key}) : super(key: key);

  @override
  State<MyInteractiveApp> createState() => _MyInteractiveAppState();
}

class _MyInteractiveAppState extends State<MyInteractiveApp> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
          body: Center(
        child: SafeArea(
          child: Row(
            children: const [
              // MyCheckBox(),
              // MyDropDownButton(),
              // MyFloatingActionButton(),
              // MySlider(),
              // MySwitch(),
              // Expanded(child: MyRadio()),
              // Expanded(child: MyTextField()),
              // MyTextButton(),
              // MyGestureDetector(),
              // MyInkWell()
            ],
        )),
      )),
    );
  }
}
