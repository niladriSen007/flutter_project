import 'package:dice_app/dice_roller.dart';
import 'package:flutter/material.dart';

const beginAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;



class ContainerClass extends StatelessWidget {
  // ContainerClass({key}):super(key: key);
  //  const ContainerClass(this.startColor,this.endColor,{super.key});
  // const ContainerClass(this.colors, {super.key});
   const ContainerClass({required this.colors, super.key});

  // const ContainerClass.gradientColor({ super.key}): color1 = Colors.black12;

  //  final Color startColor;
  //  final Color endColor;

  final List<Color> colors;



  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: colors, begin: beginAlignment, end: endAlignment)),
      child: const Center(
        // child: TextWidget(mainText),
        child: DiceRoller(),
      ),
    );
  }
}
