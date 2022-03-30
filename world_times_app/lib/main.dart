

import 'package:flutter/material.dart';
import 'package:world_times_app/main.dart';
import 'package:world_times_app/pages/choose_location.dart';
import 'package:world_times_app/pages/home.dart';
import 'package:world_times_app/pages/loading.dart';
import 'dart:js';
// the upper import statement has imported the file home.dart
// use krne per khud ba-khud import hogyin .. manually nhi krni parien


// routes se pta chalta hai k kb konsi screen render horhi hogi.. 
void main() {
  runApp(
    MaterialApp(
      initialRoute: "/home",
      routes: {
        // routes are like maps in dart.
        "/":(context) => Loading(),
        "/home":(context) => Home(),
        "/choose_location":(context) => ChooseLocation(),
      },
    )
  );
}

