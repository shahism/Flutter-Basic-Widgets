import 'package:flutter/material.dart';

class AnimationViaOpacity extends StatefulWidget {
  const AnimationViaOpacity({Key? key}) : super(key: key);

  @override
  State<AnimationViaOpacity> createState() => _AnimationViaOpacityState();
}

class _AnimationViaOpacityState extends State<AnimationViaOpacity> {
  double opacity = 0.4;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedOpacity(
          opacity: opacity,
          duration: const Duration(seconds: 1),
          curve: Curves.bounceIn,
          child: Container(
            height: 300,
            width: 400,
            color: Colors.yellow,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            opacity = opacity == 0.2 ? 1.0 : 0.2;
          });
        },
        child: const Icon(Icons.animation),
      ),
    );
  }
}
