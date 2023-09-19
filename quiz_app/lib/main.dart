import 'package:flutter/material.dart';
import 'package:quiz_app/gradient_landing.dart';

const List<Color> colors = [
  Color.fromARGB(255, 216, 10, 10),
  Color.fromARGB(255, 152, 18, 214)
];
const String quizLandingHeading = "Learn Flutter in Quicker way";
const String buttonText = "Start Quiz";
const String image = 'assets/images/quiz-logo.png';

void main() {
  runApp(const MaterialApp(
      home: Scaffold(
    body: GradientContainer(
        colors: colors,
        quizLandingHeading: quizLandingHeading,
        buttonText: buttonText,
        image:image),
  )));
}
