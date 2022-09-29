import 'package:flutter/material.dart';

class AnimationViaContainer extends StatefulWidget {
  const AnimationViaContainer({Key? key}) : super(key: key);

  @override
  State<AnimationViaContainer> createState() => _AnimationViaContainerState();
}

class _AnimationViaContainerState extends State<AnimationViaContainer> {
  double height = 300;
  double width = 200;
  Color color = Colors.yellow;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(seconds: 1),
          height: height,
          width: width,
          color: color,
          curve: Curves.easeInQuint,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            width = width == 200 ? 300 : 200;
            height = height == 300 ? 200 : 300;
            color = color == Colors.yellow ? Colors.pink : Colors.yellow;
          });
        },
        child: const Icon(Icons.animation),
      ),
    );
  }
}
