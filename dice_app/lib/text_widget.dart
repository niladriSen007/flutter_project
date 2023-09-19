
import 'package:flutter/material.dart';



class TextWidget extends StatelessWidget {
   const TextWidget(this.mainText,{super.key});

  final String mainText;
  
  @override
  Widget build(BuildContext context) {
    return Text(mainText,
        style: const TextStyle(
            fontSize: 30,
            color: Colors.cyan,
            fontWeight: FontWeight.w800,
            fontFamily: 'Poppins'));
  }
}
