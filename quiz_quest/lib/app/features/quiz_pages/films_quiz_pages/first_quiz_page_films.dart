import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_quest/app/core/enums.dart';
import 'package:quiz_quest/app/data/data_sources/quiz_data_source/quiz_categories_data_source.dart';
import 'package:quiz_quest/app/domain/repositories/quiz_repository/quiz_repository.dart';
import 'package:quiz_quest/app/features/quiz_pages/films_quiz_pages/question_quiz_page_films.dart';
import 'package:quiz_quest/app/features/quiz_pages/films_quiz_pages/second_easy_quiz_page_films.dart';
import 'package:quiz_quest/app/features/quiz_pages/films_quiz_pages/second_hard_quiz_page_films.dart';
import 'package:quiz_quest/app/features/quiz_pages/films_quiz_pages/second_medium_quiz_page_films.dart';

class FirstQuizPageFilms extends StatefulWidget {
  const FirstQuizPageFilms({
    required this.image,
    super.key,
  });

  final String image;

  @override
  State<FirstQuizPageFilms> createState() => _FirstQuizPageFilmsState();
}

class _FirstQuizPageFilmsState extends State<FirstQuizPageFilms> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: QuizzPage(
        image: widget.image,
      ),
    );
  }
}

class QuizzPage extends StatelessWidget {
  const QuizzPage({
    required this.image,
    super.key,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
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
            child: CircleAvatar(
              radius: 35,
              backgroundImage: AssetImage(image),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Center(
            child: Text(
              'Choose your difficulty',
              style: GoogleFonts.aBeeZee(
                  fontSize: 46,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          EasyDifficultButton(
            image: image,
            text: 'Easy',
          ),
          const SizedBox(
            height: 30,
          ),
          MediumDifficultButton(
            image: image,
            text: 'Medium',
          ),
          const SizedBox(
            height: 30,
          ),
          HardDifficultButton(
            image: image,
            text: 'Hard',
          ),
        ],
      ),
    );
  }
}

class EasyDifficultButton extends StatelessWidget {
  const EasyDifficultButton({
    super.key,
    required this.image,
    required this.text,
  });

  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
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
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => SecondEasyQuizPageFilms(
                    image: image,
                  )));
        },
        style: ElevatedButton.styleFrom(
            minimumSize: const Size.fromHeight(50),
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent),
        child: Text(text,
            style: GoogleFonts.aBeeZee(
              fontSize: 24,
              color: Colors.white,
            )),
      ),
    );
  }
}

class MediumDifficultButton extends StatelessWidget {
  const MediumDifficultButton({
    super.key,
    required this.image,
    required this.text,
  });

  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
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
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => SecondMediumQuizPageFilms(
                    image: image,
                  )));
        },
        style: ElevatedButton.styleFrom(
            minimumSize: const Size.fromHeight(50),
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent),
        child: Text(text,
            style: GoogleFonts.aBeeZee(
              fontSize: 24,
              color: Colors.white,
            )),
      ),
    );
  }
}

class HardDifficultButton extends StatelessWidget {
  const HardDifficultButton({
    super.key,
    required this.image,
    required this.text,
  });

  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
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
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => SecondHardQuizPageFilms(
                    image: image,
                  )));
        },
        style: ElevatedButton.styleFrom(
            minimumSize: const Size.fromHeight(50),
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent),
        child: Text(text,
            style: GoogleFonts.aBeeZee(
              fontSize: 24,
              color: Colors.white,
            )),
      ),
    );
  }
}