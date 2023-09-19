import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer( { required this.image,required this.colors,required this.quizLandingHeading,required this.buttonText,super.key});

  final List<Color> colors;
  final String quizLandingHeading;
  final String buttonText;
  final String image;


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: colors,
              begin: Alignment.topLeft,
              end: Alignment.bottomRight)),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(image, width: 320),
            const SizedBox(
              height: 48,
            ),
             Text(
              quizLandingHeading,
              style: const TextStyle(color: Colors.white, fontSize: 24,fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 102, 12, 206),
                  padding: const EdgeInsets.only(
                      left: 16, right: 16, top: 4, bottom: 4)),
              child: Text(buttonText),
            )
          ],
        ),
      ),
    );
  }
}
