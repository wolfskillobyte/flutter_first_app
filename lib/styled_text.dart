import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  // positional param
  const StyledText(this.text, {super.key});

  // here we use final, because it wont be changed after this
  final String text;

  @override
  Widget build(context) {
    return Text(
      text,
      style: const TextStyle(color: Colors.white, fontSize: 28),
    );
  }
}
