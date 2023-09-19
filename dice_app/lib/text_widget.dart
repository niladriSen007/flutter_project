import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return const Text("Namaste Flutter",
        style: TextStyle(
            fontSize: 36,
            color: Colors.cyan,
            fontWeight: FontWeight.w800,
            fontFamily: 'Roboto'));
  }
}
