import 'package:dice_app/gradient_container.dart';
import 'package:flutter/material.dart';

const Color startColor = Color.fromARGB(255, 12, 8, 20) ;
const Color endColor = Color.fromARGB(255, 18, 8, 170);
const List<Color> colors = [Color.fromARGB(255, 12, 8, 20) ,Color.fromARGB(255, 18, 8, 170)];

void main() => runApp(
        const MaterialApp(
        home: Scaffold(
          // backgroundColor: Colors.lime,
          body: ContainerClass(colors: colors),
        ),
      ),
    );
