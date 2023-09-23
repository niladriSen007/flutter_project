import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/question_summary.dart';

var q = 0;

class ResultScreen extends StatelessWidget {
   ResultScreen(
      {required this.againStartQuiz, required this.selectedAnswers, super.key});

  final List<String> selectedAnswers;

  final void Function() againStartQuiz;

  List<Map<String, Object>> summaryOfQuiz() {
    List<Map<String, Object>> summary = [];

    for (var i = 0; i < selectedAnswers.length; i++) {
      summary.add({
        "question_index" : i,
        "question": questions[i].question,
        "correct_ans": questions[i].answers[0],
        "selected_ans": selectedAnswers[i]
      });

     
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {

//    print("Result Screen");
    final SummaryData = summaryOfQuiz();
    final correctNoAnsList = SummaryData.where((data) => data["correct_ans"] == data["selected_ans"]);

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 48),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16),
              child: Text(
                "Your answered ${correctNoAnsList.length} out of ${questions.length} questions correctly ! ${correctNoAnsList.length > 3 ? "😎" : "😥"}",
                textAlign: TextAlign.center,
                style: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            const SizedBox(height: 30,),
            QuestionSummary(SummaryData),
            const SizedBox(
              height: 28,
            ),
            ElevatedButton.icon(
              onPressed: againStartQuiz,
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 102, 12, 206)),
              label: Text(
                "Retry quiz",
                style: GoogleFonts.poppins(
                    fontSize: 18, fontWeight: FontWeight.w700),
              ),
              icon: const Icon(Icons.refresh),
            )
          ],
        ),
      ),
    );
  }
}
