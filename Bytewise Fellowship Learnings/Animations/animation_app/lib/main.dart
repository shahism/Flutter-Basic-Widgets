import 'package:animation_app/ExplicitAnimations/builtinAnimation.dart';
import 'package:animation_app/ExplicitAnimations/customAnimation.dart';
import 'package:animation_app/implicitAnimations/AnimatedCrossfade.dart';
import 'package:animation_app/implicitAnimations/TweenAnimationBuilder.dart';
import 'package:animation_app/implicitAnimations/container.dart';
import 'package:animation_app/implicitAnimations/opacity.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animation App',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home:   const CustomAnimation(),
      
      );
  }
}




