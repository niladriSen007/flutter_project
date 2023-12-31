import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
const String image = 'assets/images/quiz-logo.png';
const String quizLandingHeading = "Learn Flutter in Quicker way";
const String buttonText = "Start Quiz";

class LandingPage extends StatelessWidget{

  const LandingPage(this.switchScreen,{super.key});

 final void Function() switchScreen;


  @override
  Widget build(BuildContext context) {
    return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(image, width: 320,),
            const SizedBox(
              height: 48,
            ),
             Text(
              quizLandingHeading,
              style: GoogleFonts.robotoSlab( 
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton.icon(
              onPressed: switchScreen,
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 102, 12, 206),
                  padding: const EdgeInsets.only(
                      left: 16, right: 16, top: 4, bottom: 4)),
              label: const Text(buttonText),
              icon: const Icon(Icons.arrow_right_alt),
            )
          ],
        );
  }
}