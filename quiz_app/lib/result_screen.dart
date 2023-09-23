import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/data/questions.dart';
var q=0;

class ResultScreen extends StatelessWidget {
  const ResultScreen(this.selectedAnswers, {super.key});

  final List<String> selectedAnswers;
  

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 48),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Your answers are - ",
              style: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.w800,
                  height: 3),
            ),
            ...selectedAnswers.map((ans) {
              return Container(
                  margin: const EdgeInsets.symmetric(vertical: 6),
                  child: Text(
                    ans,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.robotoSlab(
                        color: ans == questions[q<6 ? q++ : 0 ].answers[0] ? Color.fromARGB(255, 15, 221, 18) : Color.fromARGB(255, 187, 126, 121),
                        fontSize: 20),
                  ));
            })
          ],
        ),
      ),
    );
  }
}
