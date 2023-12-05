import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 30),
            Center(
              child: Text(
                'Quizz Quest 👑',
                style: GoogleFonts.aBeeZee(fontSize: 34, color: Colors.indigo),
              ),
            ),
            const SizedBox(height: 30),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              width: double.infinity,
              height: 250,
              child: Lottie.asset('images/animation_1.json'),
            ),
          ],
        ),
      ),
    );
  }
}
