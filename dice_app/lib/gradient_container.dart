import 'package:dice_app/text_widget.dart';
import 'package:flutter/material.dart';
class ContainerClass extends StatelessWidget {

  // ContainerClass({key}):super(key: key);
  const ContainerClass({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
        Color.fromARGB(255, 101, 58, 175),
        Color.fromRGBO(7, 37, 119, 1)
      ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
      child: const Center(
        child: TextWidget(),
      ),
    );
  }
}

