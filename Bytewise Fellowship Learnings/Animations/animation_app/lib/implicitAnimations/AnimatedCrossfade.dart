import 'package:flutter/material.dart';

class AnimationViaCrossFade extends StatefulWidget {
  const AnimationViaCrossFade({Key? key}) : super(key: key);

  @override
  State<AnimationViaCrossFade> createState() => _AnimationViaCrossFadeState();
}

class _AnimationViaCrossFadeState extends State<AnimationViaCrossFade> {
  CrossFadeState state = CrossFadeState.showSecond;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedCrossFade(
          crossFadeState: state,
          duration: const Duration(seconds: 1),
          firstChild: Container(
            height: 200,
            width: 200,
            color: Colors.red,
          ),
          secondChild: Container(
            height: 300,
            width: 300,
            color: Colors.orange,
          ),
          sizeCurve: Curves.decelerate,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            state = state == CrossFadeState.showSecond
                ? CrossFadeState.showFirst
                : CrossFadeState.showSecond;
          });
        },
        child: const Icon(Icons.animation),
      ),
    );
  }
}
