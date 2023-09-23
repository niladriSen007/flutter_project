import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/landing_page.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/result_screen.dart';

const List<Color> colors = [
  Color.fromARGB(255, 9, 5, 75),
  Color.fromARGB(255, 120, 4, 173)
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

   List<String> selectedAnswers = [];


  //Sobar first e call hoy ei init state method ta
  @override
  void initState() {
    activeScreen = LandingPage(switchScreen);
    super.initState();
  }

  void addUserAnswer(String answer){
    selectedAnswers.add(answer);

    if(selectedAnswers.length == questions.length){
      setState(() {
        activeScreen = ResultScreen(selectedAnswers:selectedAnswers,againStartQuiz:againStartQuiz);
      });
    }
  }

  void againStartQuiz(){
    setState(() {
      selectedAnswers = [];
      activeScreen = LandingPage(switchScreen);
    });
  }

  
  void switchScreen() {
    setState(() {
      activeScreen = QuestionScreen(addUserAnswer);
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
