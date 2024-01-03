import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_quest/app/data/data_sources/animals_category/animals_category_data_source.dart';
import 'package:quiz_quest/app/data/data_sources/sport_category/sport_category_data_source.dart';
import 'package:quiz_quest/app/domain/models/animals_model/animals_quiz_model.dart';
import 'package:quiz_quest/app/domain/models/art_model/art_quiz_model.dart';
import 'package:quiz_quest/app/domain/models/computer_science_model/computer_science_quiz_model.dart';
import 'package:quiz_quest/app/domain/models/geography_model/geography_quiz_model.dart';
import 'package:quiz_quest/app/domain/repositories/category_repository.dart';
import 'package:quiz_quest/app/features/home_page/cubit/home_cubit.dart';

class QuestionQuizPageGeography extends StatefulWidget {
  const QuestionQuizPageGeography({
    required this.model,
    super.key,
  });

  final GeographyQuizModel? model;

  @override
  State<QuestionQuizPageGeography> createState() =>
      _QuestionQuizPageGeographyState();
}

class _QuestionQuizPageGeographyState extends State<QuestionQuizPageGeography> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quest'),
      ),
      body: SafeArea(
        child: QuizzPage(
          model: widget.model,
        ),
      ),
    );
  }
}

class QuizzPage extends StatelessWidget {
  const QuizzPage({
    required this.model,
    super.key,
  });

  final GeographyQuizModel? model;

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
          const CircleAvatar(
            radius: 50,
            child: Icon(
              Icons.question_mark,
              size: 50,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          if (model != null)
            QuestionWidget(
              question: model!.results[1].question,
            ),
          const SizedBox(
            height: 30,
          ),
          if (model != null)
            AnswerWidget(
              answer: model!.results[1].correctAnswer,
            ),
          const SizedBox(
            height: 30,
          ),
          if (model != null)
            AnswerWidget(
              answer: model!.results[1].incorrectAnswers[0],
            ),
          const SizedBox(
            height: 30,
          ),
          if (model != null)
            AnswerWidget(
              answer: model!.results[1].incorrectAnswers[1],
            ),
          const SizedBox(
            height: 30,
          ),
          if (model != null)
            AnswerWidget(
              answer: model!.results[1].incorrectAnswers[2],
            ),
        ],
      ),
    );
  }
}

class QuestionWidget extends StatelessWidget {
  const QuestionWidget({
    required this.question,
    super.key,
  });

  final String question;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        question,
        style: GoogleFonts.aBeeZee(
            fontSize: 28, color: Colors.white, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}

class AnswerWidget extends StatelessWidget {
  const AnswerWidget({
    required this.answer,
    super.key,
  });

  final String answer;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
                Radius.circular(6.0),
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
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                minimumSize: const Size.fromHeight(50),
                backgroundColor: Colors.transparent,
                shadowColor: Colors.transparent),
            child: Text(answer,
                style: GoogleFonts.aBeeZee(
                  fontSize: 24,
                  color: Colors.white,
                )),
          ),
        ),
      ],
    );
  }
}
