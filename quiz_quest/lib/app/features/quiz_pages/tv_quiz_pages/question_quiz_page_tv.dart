import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_quest/app/domain/models/sports_model/sports_quiz_model.dart';
import 'package:quiz_quest/app/domain/models/tv_model/tv_quiz_model.dart';
import 'package:quiz_quest/app/features/home_page/cubit/home_cubit.dart';
import 'package:quiz_quest/app/features/quiz_pages/quiz_countdown_timer/quiz_countdown_timer.dart';

class QuestionQuizPageTV extends StatefulWidget {
  const QuestionQuizPageTV({
    required this.model,
    super.key,
  });

  final TVQuizModel? model;

  @override
  State<QuestionQuizPageTV> createState() => _QuestionQuizPageTVState();
}

class _QuestionQuizPageTVState extends State<QuestionQuizPageTV> {
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

  final TVQuizModel? model;

  @override
  Widget build(BuildContext context) {
    const int duration = 21;
    final CountDownController controller = CountDownController();

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
          // CountDownTimer(
          //   isTimeUp: false,
          //   duration: duration,
          //   controller: controller,
          // ),
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
