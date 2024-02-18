import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';

import 'SignUpPage.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.withOpacity(0.5),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Image.asset(
            "assets/images/logo.png",
            height: 200,
          ),
          const SizedBox(height: 100,),
          const Text(
            "Continue as..",
            style: TextStyle(
              fontSize: 25,
              color: Colors.white,
              fontStyle: FontStyle.italic,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
              child: InkWell(
                  onTap: () {
                    Get.to(() => const SignUpPage());
                  },
                  child: const NewWidget(
                    text: 'Grower',
                  ))),
          const SizedBox(
            height: 10,
          ),
          const Center(
            child: NewWidget(
              text: 'Buyer',
            ),
          )
        ],
      ),
    );
  }
}

class NewWidget extends StatelessWidget {
  final String text;

  const NewWidget({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .09,
      width: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        border: Border.all(
          width: 4,
          color: Colors.transparent,
          style: BorderStyle.solid,
        ),
        gradient: const LinearGradient(
          colors: [Colors.red, Colors.orange],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(width: 4, color: Colors.white),
            borderRadius: BorderRadius.circular(24)),
        child: Container(
          height: 70,
          width: 250,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            border: Border.all(
              width: 4,
              color: Colors.transparent,
              style: BorderStyle.solid,
            ),
            gradient: const LinearGradient(
              colors: [Colors.green, Colors.blue],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Center(
            child: Text(
              text,
              style: GoogleFonts.quicksand(
                textStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
