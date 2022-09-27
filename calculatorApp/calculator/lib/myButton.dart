import 'package:flutter/material.dart';
import 'Constants.dart';

class MyButton extends StatelessWidget {
  final String title;
  final Color colour;
  final VoidCallback onPress;

  const MyButton(
      {Key? key,
      required this.title,
      required this.onPress,
      this.colour = kButtonColorNumbers})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Ink(
        width: 60,
        height: 90,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: colour,
        ),
        child: Align(
          alignment: Alignment.center,
          child: Text(
            title.toString(),
            style: kbuttonfont,
          ),
        ),
      ),
    );
  }
}
