import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 360,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 30,
                  height: 30,
                  alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(100)
                    ),
                    child: Text(
                      ((data["question_index"] as int) + 1).toString(),
                      style: const TextStyle(color: Colors.white),
                    )),
                const SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        data["question"] as String,
                        style: GoogleFonts.robotoSlab(
                            fontSize: 16,
                            color: Color.fromARGB(255, 229, 121, 248)),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        data["selected_ans"] as String,
                        style: GoogleFonts.roboto(
                            color: data["selected_ans"] == data["correct_ans"]
                                ? const Color.fromARGB(255, 39, 179, 43)
                                : Colors.red , fontWeight: FontWeight.w800,fontSize: 16),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        data["correct_ans"] as String,
                        style: GoogleFonts.roboto(color: Colors.white,fontSize: 16),
                      ),
                      const SizedBox(height: 16,)
                    ],
                  ),
                )
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
