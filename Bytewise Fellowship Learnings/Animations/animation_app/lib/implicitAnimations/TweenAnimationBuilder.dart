import 'package:flutter/material.dart';

class AnimationViaTweenAnimationBuilder extends StatefulWidget {
  const AnimationViaTweenAnimationBuilder({Key? key}) : super(key: key);

  @override
  State<AnimationViaTweenAnimationBuilder> createState() =>
      _AnimationViaTweenAnimationBuilderState();
}

class _AnimationViaTweenAnimationBuilderState
    extends State<AnimationViaTweenAnimationBuilder> {
  double targetedValue = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TweenAnimationBuilder(
          tween: Tween<double>(begin: 0, end: targetedValue),
          duration: const Duration(seconds: 1),
          curve: Curves.slowMiddle,
          builder: (context, value, child) {
            return IconButton(
              iconSize: targetedValue,
              onPressed: (){
                setState(() {
                  targetedValue = targetedValue == 20 ? 50 : 20;
                });
              },
              icon: const Icon(Icons.data_saver_on_outlined),
            
            );
          },
        ),
      ),
    );
  }
}
