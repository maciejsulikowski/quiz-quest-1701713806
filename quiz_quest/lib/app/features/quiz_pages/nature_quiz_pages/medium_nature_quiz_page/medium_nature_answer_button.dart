import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_quest/app/core/enums.dart';
import 'package:quiz_quest/app/data/data_sources/quiz_data_source/quiz_categories_data_source.dart';
import 'package:quiz_quest/app/data/data_sources/user_data_source/user_data_source.dart';
import 'package:quiz_quest/app/domain/models/films_model/films_quiz_model.dart';
import 'package:quiz_quest/app/domain/models/games_model/games_quiz_model.dart';
import 'package:quiz_quest/app/domain/models/geography_model/geography_quiz_model.dart';
import 'package:quiz_quest/app/domain/models/history_model/history_quiz_model.dart';
import 'package:quiz_quest/app/domain/models/music_model/music_quiz_model.dart';
import 'package:quiz_quest/app/domain/models/nature_model/nature_quiz_model.dart';
import 'package:quiz_quest/app/domain/repositories/quiz_repository/quiz_repository.dart';
import 'package:quiz_quest/app/domain/repositories/user_repository/user_repository.dart';
import 'package:quiz_quest/app/features/quiz_pages/films_quiz_pages/cubit/films_cubit.dart';
import 'package:quiz_quest/app/features/quiz_pages/films_quiz_pages/easy_films_quiz_page/easy_lost_life_page.dart';
import 'package:quiz_quest/app/features/quiz_pages/films_quiz_pages/easy_films_quiz_page/resume_easy_question_quiz_page.dart';
import 'package:quiz_quest/app/features/quiz_pages/games_quiz_pages/cubit/games_cubit.dart';
import 'package:quiz_quest/app/features/quiz_pages/games_quiz_pages/easy_games_quiz_page/easy_games_lost_life_page.dart';
import 'package:quiz_quest/app/features/quiz_pages/geography_quiz_pages/cubit/geography_cubit.dart';
import 'package:quiz_quest/app/features/quiz_pages/geography_quiz_pages/easy_geography_quiz_page/easy_geography_lost_life_page.dart';
import 'package:quiz_quest/app/features/quiz_pages/history_quiz_pages/cubit/history_cubit.dart';
import 'package:quiz_quest/app/features/quiz_pages/history_quiz_pages/easy_history_quiz_page/easy_history_lost_life_page.dart';
import 'package:quiz_quest/app/features/quiz_pages/history_quiz_pages/easy_history_quiz_page/resume_easy_history_question_quiz_page.dart';
import 'package:quiz_quest/app/features/quiz_pages/music_quiz_pages/cubit/music_cubit.dart';
import 'package:quiz_quest/app/features/quiz_pages/music_quiz_pages/easy_music_quiz_page/easy_music_lost_life_page.dart';
import 'package:quiz_quest/app/features/quiz_pages/music_quiz_pages/easy_music_quiz_page/resume_easy_music_question_quiz_page.dart';
import 'package:quiz_quest/app/features/quiz_pages/nature_quiz_pages/cubit/nature_cubit.dart';
import 'package:quiz_quest/app/features/quiz_pages/nature_quiz_pages/easy_nature_quiz_page/easy_nature_lost_life_page.dart';
import 'package:quiz_quest/app/features/quiz_pages/nature_quiz_pages/easy_nature_quiz_page/resume_easy_nature_question_quiz_page.dart';
import 'package:quiz_quest/app/features/quiz_pages/nature_quiz_pages/medium_nature_quiz_page/medium_nature_lost_life_page.dart';
import 'package:quiz_quest/app/features/quiz_pages/nature_quiz_pages/medium_nature_quiz_page/medium_question_quiz_page.dart';
import 'package:quiz_quest/app/features/quiz_pages/nature_quiz_pages/medium_nature_quiz_page/resume_medium_nature_question_quiz_page.dart';
import 'package:quiz_quest/app/features/quiz_pages/quiz_countdown_timer/quiz_countdown_timer.dart';
import 'package:quiz_quest/app/injection_container.dart';
class MediumNatureAnswerButton extends StatefulWidget {
  MediumNatureAnswerButton({
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
  State<MediumNatureAnswerButton> createState() =>
      _MediumNatureAnswerButtonState();
}

class _MediumNatureAnswerButtonState extends State<MediumNatureAnswerButton> {
  void onPressed() {
    if (isButtonDisabled) {
      return;
    }

    widget.controller.pause();

    if (widget.isCorrectAnswer) {
      widget.colorFunction(Colors.green, widget.index);
      mediumNatureGoodAnswers += 1;
    } else {
      widget.colorFunction(Colors.red, widget.index);
      mediumNatureBadAnswers += 1;
      if (mediumNatureBadAnswers == 3) {
        context
            .read<NatureCubit>()
            .updateMediumNaturePoints(mediumNatureGoodAnswers);
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) =>
                MediumNatureLostLifePage(goodAnswers: mediumNatureGoodAnswers),
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
        .replaceAll('&ocirc;', '');

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
