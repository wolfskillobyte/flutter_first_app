import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';

// if your variable is restrictive use const or final
// using const is preferred bc it improves performance. "compiled time constant value"
const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;
// another way to init a variable to be redeclared later
// Alignment? startAlignment;
// or
// var startAlignment = Alignment.topLeft;

class GradientContainer extends StatelessWidget {
  // opt 1:
  // GradientContainer() {
  //   // initialization work
  //   // add comments to describe your constructor
  // }

  // opt 2:
  // declaring/creating your constructor is for reusable widgets
  const GradientContainer(this.color1, this.color2, {super.key});

  // constructor function for theme purple()
  const GradientContainer.purple({super.key})
      : color1 = Colors.deepPurple,
        color2 = Colors.indigo;

  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: DiceRoller(),
        // for testing
        // child: StyledText('Lets gooooo'),
      ),
    );
  }
}

//----> another approach to having variable colors
//   const GradientContainer({super.key, required this.colors});

//   // list types are always dynamic
//   final List<Color> colors;

//   @override
//   Widget build(context) {
//     return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           colors: colors,
//           begin: startAlignment,
//           end: endAlignment,
//         ),
//       ),
//       child: Center(
//         child: StyledText('Lets gooooo'),
//       ),
//     );
//   }
// }
