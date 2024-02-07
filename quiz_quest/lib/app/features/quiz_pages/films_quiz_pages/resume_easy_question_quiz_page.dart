import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_quest/app/core/enums.dart';
import 'package:quiz_quest/app/data/data_sources/quiz_data_source/quiz_categories_data_source.dart';
import 'package:quiz_quest/app/domain/repositories/quiz_repository/quiz_repository.dart';
import 'package:quiz_quest/app/features/home_page/home_page.dart';
import 'package:quiz_quest/app/features/quiz_pages/films_quiz_pages/easy_question_quiz_page.dart';
import 'package:quiz_quest/app/features/quiz_pages/films_quiz_pages/question_quiz_page_films.dart';
import 'package:quiz_quest/app/features/quiz_pages/films_quiz_pages/first_quiz_page_films.dart';

class ResumeEasyQuizPageFilms extends StatefulWidget {
  const ResumeEasyQuizPageFilms({
    required this.badAnswers,
    required this.goodAnswers,
    super.key,
  });

  final int goodAnswers;
  final int badAnswers;

  @override
  State<ResumeEasyQuizPageFilms> createState() =>
      _ResumeEasyQuizPageFilmsState();
}

class _ResumeEasyQuizPageFilmsState extends State<ResumeEasyQuizPageFilms> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResumePage(
        badAnswers: badAnswers,
        goodAnswers: goodAnswers,
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
          const TextWidget(text: 'Try beat your record: points 💎'),
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
                //throw Exception('No user found');
                //Navigator.of(context).push(MaterialPageRoute(
                //  builder: (context) => const HomePage(),
                //));
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
