import 'package:dice_app/text_widget.dart';
import 'package:flutter/material.dart';
import 'dart:math';

final randomNumberGenerator = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

//eta private ja only ei class er moddhei accessable
class _DiceRollerState extends State<DiceRoller> {
  var activeImage = 'assets/dice-1.png';

  var diceImageIndex = 1;

  void rollDice() {
    setState(() {
      diceImageIndex = randomNumberGenerator.nextInt(6) +1;
       //Barbar Random() call korle Random() er barbar instance create hobe jeta amra chai na so class er baire akta final instance baniye nilam jate instance akta banalei hoy
      // activeImage = 'assets/dice-$diceImageIndex.png';
    });
    // print("Rolling Dice");
  }

  final mainText = "Roll dice challenge - Flutter";

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        TextWidget(mainText),
        const SizedBox(
          height: 16,
        ),
        Image.asset('assets/dice-$diceImageIndex.png', width: 160),
        const SizedBox(
          height: 14,
        ),
        ElevatedButton(
          onPressed: rollDice,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.deepPurple,
            padding:
                const EdgeInsets.only(top: 6, bottom: 6, left: 16, right: 16),
          ),
          child: const Text("Roll me"),
        )
      ],
    );
  }
}
