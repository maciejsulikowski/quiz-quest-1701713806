import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_quest/app/core/enums.dart';
import 'package:quiz_quest/app/data/data_sources/quiz_data_source/quiz_categories_data_source.dart';
import 'package:quiz_quest/app/data/data_sources/user_data_source/user_data_source.dart';
import 'package:quiz_quest/app/domain/models/films_model/films_quiz_model.dart';
import 'package:quiz_quest/app/domain/repositories/quiz_repository/quiz_repository.dart';
import 'package:quiz_quest/app/domain/repositories/user_repository/user_repository.dart';
import 'package:quiz_quest/app/features/home_page/ranking_widget/cubit/ranking_cubit.dart';
import 'package:quiz_quest/app/features/quiz_pages/films_quiz_pages/cubit/films_cubit.dart';
import 'package:quiz_quest/app/features/quiz_pages/films_quiz_pages/medium_films_quiz_page/medium_films_question_widget.dart';
import 'package:quiz_quest/app/features/quiz_pages/films_quiz_pages/medium_films_quiz_page/medium_lost_life_page.dart';
import 'package:quiz_quest/app/features/quiz_pages/films_quiz_pages/medium_films_quiz_page/medium_question_quiz_page.dart';
import 'package:quiz_quest/app/features/quiz_pages/films_quiz_pages/medium_films_quiz_page/resume_medium_question_quiz_page.dart';

import 'package:quiz_quest/app/features/quiz_pages/quiz_countdown_timer/quiz_countdown_timer.dart';
import 'package:quiz_quest/app/injection_container.dart';


class MediumFilmsAnswerButton extends StatefulWidget {
  MediumFilmsAnswerButton({
    required this.answer,
    required this.controller,
    required this.isCorrectAnswer,
    required this.colorFunction,
    required this.isButtonClicked,
    required this.isButtonDisabled,
    required this.textcolor,
    required this.index,
    required this.duration,
    required this.isTimeUp,
  });

  final String answer;
  final CountDownController controller;
  final bool isCorrectAnswer;

  int duration;
  bool isTimeUp;
  Function(Color, int) colorFunction;
  final Function(bool) isButtonClicked;
  final Function(bool) isButtonDisabled;
  Color textcolor;
  final int index;

  @override
  State<MediumFilmsAnswerButton> createState() =>
      _MediumFilmsAnswerButtonState();
}

class _MediumFilmsAnswerButtonState extends State<MediumFilmsAnswerButton> {
  void onPressed() {
    if (isButtonDisabled) {
      return;
    }

    widget.controller.pause();

    if (widget.isCorrectAnswer) {
      widget.colorFunction(Colors.green, widget.index);
      mediumFilmsGoodAnswers += 1;
    } else {
      widget.colorFunction(Colors.red, widget.index);
      mediumFilmsBadAnswers += 1;
      if (mediumFilmsBadAnswers == 3) {
        // context.read<FilmsCubit>().addTotalFilmsPoints(mediumFilmsGoodAnswers);
        context
            .read<FilmsCubit>()
            .updateMediumFilmsPoints(mediumFilmsGoodAnswers);
            context
            .read<RankingCubit>()
            .updateMediumFilmsRankingPoints(mediumFilmsGoodAnswers);
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) =>
                MediumLostLifePage(goodAnswers: mediumFilmsGoodAnswers),
          ),
        );
      }
    }
    setState(() {
      widget.textcolor = widget.isCorrectAnswer ? Colors.green : Colors.red;
    });
    widget.isButtonClicked(true);
    widget.isButtonDisabled(true);
  }

  @override
  Widget build(BuildContext context) {
    final modifiedAnswer = widget.answer
        .replaceAll('&quot;', '')
        .replaceAll('&#039;', '')
        .replaceAll('&aacute;', '')
        .replaceAll('&ntilde;', '')
        .replaceAll('&amp;', '')
        .replaceAll('&rsquo;', '')
        .replaceAll('&rdquo;', '')
        .replaceAll('&ldquo;', '')
        .replaceAll('&hellip;', '');

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Color.fromRGBO(11, 22, 65, 1),
            Color.fromRGBO(9, 77, 203, 1),
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
        ],
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          minimumSize: const Size.fromHeight(50),
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
        child: Text(
          modifiedAnswer,
          style: GoogleFonts.aBeeZee(
            fontSize: 24,
            color: widget.isTimeUp && widget.isCorrectAnswer
                ? Colors.green
                : widget.textcolor,
          ),
        ),
      ),
    );
  }
}
