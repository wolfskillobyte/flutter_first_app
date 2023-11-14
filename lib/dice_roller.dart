import 'package:flutter/material.dart';
import 'package:first_app/styled_text.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

// underscore notates a private class
// meaning, this state class is meant to be used internally
class _DiceRollerState extends State<DiceRoller> {
  var currentDice = 2;

  void rollDice() {
    setState(() {
      currentDice = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/dice-$currentDice.png',
          width: 200,
        ),
        // const SizedBox(height: 20), <-- another way of doing padding like an empty div
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
          padding: const EdgeInsets.only(top: 20),
          foregroundColor: Colors.white,
          textStyle: const TextStyle(fontSize: 28)),
          child: const StyledText('Click me!'),
        ),
      ],
    );
  }
}
