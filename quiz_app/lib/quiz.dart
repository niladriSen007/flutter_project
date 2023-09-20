import 'package:flutter/material.dart';
import 'package:quiz_app/landing_page.dart';
import 'package:quiz_app/questions_screen.dart';

const List<Color> colors = [
  Color.fromARGB(255, 216, 10, 10),
  Color.fromARGB(255, 152, 18, 214)
];

class QuizWidget extends StatefulWidget {
  const QuizWidget({super.key});

  @override
  State<StatefulWidget> createState() {
    return _QuizWidgetState();
  }
}

class _QuizWidgetState extends State<QuizWidget> {

  Widget? activeScreen;


  //Sobar first e call hoy ei init state method ta
  @override
  void initState() {
    activeScreen = LandingPage(switchScreen);
    super.initState();
  }

  void switchScreen() {
    setState(() {
      activeScreen = const QuestionScreen();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: colors,
                begin: Alignment.topLeft,
                end: Alignment.bottomRight)),
        child: Center(
          child: activeScreen,
        ),
      ),
    ));
  }
}
