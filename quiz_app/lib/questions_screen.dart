import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {


  void selectAnswer(){
    print("Answer Clicked");
  }

  @override
  Widget build(BuildContext context) {

    final  currentQuestion = questions[0];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          // mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
             Text(
              currentQuestion.question,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontSize: 28, color: Colors.white, fontWeight: FontWeight.w800,wordSpacing: 2),
            ),
            const SizedBox(
              height: 32,
            ),
            // ElevatedButton(
            //     onPressed: () {},
            //     style: ElevatedButton.styleFrom(
            //         backgroundColor: Color.fromARGB(255, 99, 25, 112)),
            //     child: const Text("Answer 2")),
            ...currentQuestion.answers.map((answer){
            return AnswerButton(answer: answer, selectAnswer: selectAnswer);
            })
            // AnswerButton(answer: currentQuestion.answers[1], selectAnswer: selectAnswer),
            // AnswerButton(answer: currentQuestion.answers[2], selectAnswer: selectAnswer),
            // AnswerButton(answer: currentQuestion.answers[3], selectAnswer: selectAnswer),
           
          ],
        ),
      ),
    );
  }
}
