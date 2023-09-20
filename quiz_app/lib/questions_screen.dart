import 'package:flutter/material.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Center(
            child: Text(
          "How many lifecycles methods are in Flutter ?",
          style: TextStyle(
              fontSize: 32, color: Colors.white, fontWeight: FontWeight.w800),
        )),
        Text("2",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 24,color: Colors.white,backgroundColor: Colors.blue,height: 2,decoration: TextDecoration.underline,textBaseline: TextBaseline.alphabetic),),
        Text("3",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 24,color: Colors.white,backgroundColor: Colors.blue,height: 2,decoration: TextDecoration.underline,textBaseline: TextBaseline.alphabetic),),
        Text("4",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 24,color: Colors.white,backgroundColor: Colors.blue,height: 2,decoration: TextDecoration.underline,textBaseline: TextBaseline.alphabetic),),
        Text("5",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 24,color: Colors.white,backgroundColor: Colors.blue,height: 2,decoration: TextDecoration.underline,textBaseline: TextBaseline.alphabetic),),
      ],
    );
  }
}
