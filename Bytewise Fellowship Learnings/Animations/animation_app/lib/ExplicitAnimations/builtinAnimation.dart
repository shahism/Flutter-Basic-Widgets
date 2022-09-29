import 'package:flutter/material.dart';

class BuiltinExplicitAnimation extends StatefulWidget {
  const BuiltinExplicitAnimation({Key? key}) : super(key: key);

  @override
  State<BuiltinExplicitAnimation> createState() =>
      _BuiltinExplicitAnimationState();
}

class _BuiltinExplicitAnimationState extends State<BuiltinExplicitAnimation>
    with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  Animation<double>? animation;
  @override
  void initState() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    animation = Tween<double>(begin: 12, end: 40).animate(animationController!);
    animationController?.repeat();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RotationTransition(
          turns: animation!,
          child: Container(
            width: 50.0,
            height: 50.0,
            color: Colors.yellow,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
        if (animationController!.isAnimating) {
          animationController!.stop();
        } else {
          animationController?.repeat( reverse: true);
        }
      },
      child: const Icon(Icons.animation),
      ),

    );
  }
}
