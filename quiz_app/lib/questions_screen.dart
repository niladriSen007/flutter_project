import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen(this.addUserAnswer,{super.key});


  final void Function(String answer) addUserAnswer;

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  var questionNo;

  @override
  void initState() {
    questionNo = 0;
    super.initState();
  }

  void selectAnswer(String ans) {
    widget.addUserAnswer(ans);
    setState(() {
      questionNo < questions.length - 1
          ? questionNo += 1
          : questionNo = questions.length - 1;
    });
    // print("Answer Clicked");
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[questionNo];

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
              style: GoogleFonts.lancelot(
                fontSize: 28,
                color: Colors.white,
                fontWeight: FontWeight.w900,
                wordSpacing: 2,
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            // ElevatedButton(
            //     onPressed: () {},
            //     style: ElevatedButton.styleFrom(
            //         backgroundColor: Color.fromARGB(255, 99, 25, 112)),
            //     child: const Text("Answer 2")),
            ...currentQuestion.getShuffledAnswers().map((answer) {
              return AnswerButton(answer: answer, selectAnswer: () {
                 selectAnswer(answer); 
                 });
            }),
            // AnswerButton(answer: currentQuestion.answers[1], selectAnswer: selectAnswer),
            // AnswerButton(answer: currentQuestion.answers[2], selectAnswer: selectAnswer),
            // AnswerButton(answer: currentQuestion.answers[3], selectAnswer: selectAnswer),
            Container(
                margin: const EdgeInsets.symmetric(vertical: 12),
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.limeAccent,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40))),
                    child: questionNo == 5
                        ? Text(
                            "Submit",
                            style: GoogleFonts.robotoSlab(
                                color: Colors.black,
                                fontWeight: FontWeight.w900,
                                fontSize: 18),
                          )
                        : Text(
                            "Go To Next",
                            style: GoogleFonts.robotoSlab(
                                color: Colors.black,
                                fontWeight: FontWeight.w900,
                                fontSize: 18),
                          )))
          ],
        ),
      ),
    );
  }
}
