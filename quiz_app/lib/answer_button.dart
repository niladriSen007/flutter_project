import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(
      {required this.answer, required this.selectAnswer, super.key});

  final String answer;
  final void Function() selectAnswer;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 2),
      child: ElevatedButton(
          onPressed: selectAnswer,
          style: ElevatedButton.styleFrom(
            // minimumSize: const Size(296, 32),
            // maximumSize: const Size(396, 42),
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 100),
              backgroundColor: const Color.fromARGB(255, 61, 22, 68),
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(60))),
          child: Text(answer)),
    );
  }
}
