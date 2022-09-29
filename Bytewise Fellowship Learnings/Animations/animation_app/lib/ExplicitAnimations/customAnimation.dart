import 'package:flutter/material.dart';

class CustomAnimation extends StatefulWidget {
  const CustomAnimation({Key? key}) : super(key: key);

  @override
  State<CustomAnimation> createState() => _CustomAnimationState();
}

class _CustomAnimationState extends State<CustomAnimation>
    with SingleTickerProviderStateMixin {
  Animation<double>? _sizeAnimation;

  @override
  void initState() {
    AnimationController animationController;
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );
    animationController.addListener(() {
      setState(() {});
    });
    _sizeAnimation =
        Tween<double>(begin: 20, end: 40).animate(animationController);

    animationController.repeat();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.blue, Colors.red, Colors.yellow],
                  begin: Alignment.topRight,
                  end: Alignment.bottomCenter),
            ),
          ),
          Center(
            child: SafeArea(
              child: Container(
                width: _sizeAnimation?.value,
                height: _sizeAnimation!.value,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
