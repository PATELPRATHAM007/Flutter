import "package:flutter/material.dart";
import "rolldice.dart";

var startGradinet = Alignment.topCenter;
var endGradinet = Alignment.bottomCenter;


class GradientContainer extends StatelessWidget {
   const GradientContainer(this.startColor, this.endColors, {super.key});

   const GradientContainer.purple({super.key})
      : startColor = Colors.purple,
        endColors = Colors.indigo;

  final Color startColor;
  final Color endColors;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [startColor, endColors],
            begin: startGradinet,
            end: endGradinet,
            stops: const [.3, 1]),
      ),
      child: const Center(
        child: DiceRoller(), 
      ),
    );
  }
}
