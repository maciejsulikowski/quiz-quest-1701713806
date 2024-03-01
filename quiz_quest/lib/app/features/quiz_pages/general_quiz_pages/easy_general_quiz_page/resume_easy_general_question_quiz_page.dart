import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_quest/app/features/quiz_pages/general_quiz_pages/easy_general_quiz_page/easy_question_quiz_page.dart';

class ResumeEasyGeneralQuizPageGames extends StatefulWidget {
  const ResumeEasyGeneralQuizPageGames({
    required this.badAnswers,
    required this.goodAnswers,
    super.key,
  });

  final int goodAnswers;
  final int badAnswers;

  @override
  State<ResumeEasyGeneralQuizPageGames> createState() =>
      _ResumeEasyGeneralQuizPageGamesState();
}

class _ResumeEasyGeneralQuizPageGamesState
    extends State<ResumeEasyGeneralQuizPageGames> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResumePage(
        badAnswers: easyGeneralBadAnswers,
        goodAnswers: easyGeneralGoodAnswers,
      ),
    );
  }
}

class ResumePage extends StatelessWidget {
  const ResumePage({
    required this.badAnswers,
    required this.goodAnswers,
    super.key,
  });

  final int goodAnswers;
  final int badAnswers;

  @override
  Widget build(BuildContext context) {
    final record = goodAnswers * 10;

    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 10, 58, 214),
            Color.fromARGB(255, 22, 20, 129),
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
      child: ListView(
        children: [
          const SizedBox(
            height: 30,
          ),
          Center(
            child: Text(
              'Good work!',
              style: GoogleFonts.aBeeZee(
                  fontSize: 46,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          TextWidget(text: 'You scored: $record points 💎'),
          const SizedBox(
            height: 30,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Color.fromRGBO(143, 165, 255, 1),
                    Color.fromRGBO(10, 53, 132, 1),
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
                borderRadius: const BorderRadius.all(
                  Radius.circular(25.0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 4,
                    blurRadius: 10,
                    offset: const Offset(0, 3),
                  )
                ]),
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).popUntil((route) => route.isFirst);
              },
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(50),
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent),
              child: Text('''Back to Home Page''',
                  style: GoogleFonts.aBeeZee(
                    fontSize: 24,
                    color: Colors.white,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}

class TextWidget extends StatelessWidget {
  const TextWidget({
    required this.text,
    super.key,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16),
      child: Text(
        text,
        style: GoogleFonts.aBeeZee(
          fontSize: 24,
          color: Colors.white,
        ),
      ),
    );
  }
}
