import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_quest/app/features/home_page/ranking_widget/cubit/ranking_cubit.dart';
import 'package:quiz_quest/app/features/quiz_pages/games_quiz_pages/cubit/games_cubit.dart';
import 'package:quiz_quest/app/features/quiz_pages/games_quiz_pages/hard_games_quiz_page/hard_games_lost_life_page.dart';
import 'package:quiz_quest/app/features/quiz_pages/games_quiz_pages/hard_games_quiz_page/hard_question_quiz_page.dart';

// ignore: must_be_immutable
class HardGamesAnswerButton extends StatefulWidget {
  HardGamesAnswerButton({
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
  State<HardGamesAnswerButton> createState() => _HardGamesAnswerButtonState();
}

class _HardGamesAnswerButtonState extends State<HardGamesAnswerButton> {
  void onPressed() {
    if (isButtonDisabled) {
      return;
    }

    widget.controller.pause();

    if (widget.isCorrectAnswer) {
      widget.colorFunction(Colors.green, widget.index);
      hardGamesGoodAnswers += 1;
    } else {
      widget.colorFunction(Colors.red, widget.index);
      hardGamesBadAnswers += 1;
      if (hardGamesBadAnswers == 3) {
        context.read<GamesCubit>().updateHardGamesPoints(hardGamesGoodAnswers);
        context
            .read<RankingCubit>()
            .updateHardGamesRankingPoints(hardGamesGoodAnswers);
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) =>
                HardGamesLostLifePage(goodAnswers: hardGamesGoodAnswers),
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
        .replaceAll('&eacute;', '')
        .replaceAll('&iuml;', '')
        .replaceAll('&eacute;', '')
        .replaceAll('&sup2;', '');

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
