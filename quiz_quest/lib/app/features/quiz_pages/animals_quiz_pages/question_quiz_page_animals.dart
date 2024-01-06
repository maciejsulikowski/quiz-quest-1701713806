import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_quest/app/domain/models/animals_model/animals_quiz_model.dart';
import 'package:quiz_quest/app/features/home_page/cubit/home_cubit.dart';
import 'package:quiz_quest/app/features/quiz_pages/quiz_countdown_timer/quiz_countdown_timer.dart';

class QuestionQuizPage extends StatefulWidget {
  const QuestionQuizPage({
    required this.model,
    super.key,
  });

  final AnimalsQuizModel? model;

  @override
  State<QuestionQuizPage> createState() => _QuestionQuizPageState();
}

class _QuestionQuizPageState extends State<QuestionQuizPage> {
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

class QuizzPage extends StatefulWidget {
  const QuizzPage({
    required this.model,
    super.key,
  });

  final AnimalsQuizModel? model;

  @override
  State<QuizzPage> createState() => _QuizzPageState();
}

class _QuizzPageState extends State<QuizzPage> {
  int currentIndex = 0;
  late String question;
  late List<dynamic> list;
  late String correctAnswer;
  final controller = CountDownController();
  bool isButtonBlocked = true;

  void updateAnswers() {
    question = widget.model!.results[currentIndex].question;
    List incorrectAnswers =
        widget.model!.results[currentIndex].incorrectAnswers;
    correctAnswer = widget.model!.results[currentIndex].correctAnswer;
    list = incorrectAnswers + [correctAnswer];
    list.shuffle();
  }

  @override
  void initState() {
    super.initState();
    updateAnswers();
  }

  @override
  Widget build(BuildContext context) {
    const int duration = 21;
    Color color = Colors.white;

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
          CountDownTimer(duration: duration, controller: controller),
          const SizedBox(
            height: 15,
          ),
          if (widget.model != null)
            QuestionWidget(
              question: question,
            ),
          const SizedBox(
            height: 30,
          ),
          if (widget.model != null)
            for (final answer in list) ...[
              AnswerWidget(
                isButtonBlocked: isButtonBlocked,
                color: color,
                controller: controller,
                answer: answer,
                isCorrectAnswer: answer == correctAnswer ? true : false,
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                    color: Colors.black,
                    child: ElevatedButton(
                      onPressed: isButtonBlocked
                          ? null
                          : () {
                              controller.start();
                              setState(() {
                                currentIndex = currentIndex + 1;
                                updateAnswers();
                              });
                            },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.black,
                      ),
                      child: const Text('Next Question ➔'),
                    )),
              ],
            ),
          )
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

class AnswerWidget extends StatefulWidget {
  AnswerWidget({
    required this.answer,
    required this.isCorrectAnswer,
    required this.controller,
    required this.color,
    required this.isButtonBlocked,
    super.key,
  });

  final String answer;
  final bool isCorrectAnswer;
  final CountDownController controller;
  Color color;
  final bool isButtonBlocked;

  @override
  State<AnswerWidget> createState() => _AnswerWidgetState();
}

class _AnswerWidgetState extends State<AnswerWidget> {
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
        onPressed: () {
          if (widget.isCorrectAnswer) {
            setState(() {
              widget.color = Colors.green;
              widget.controller.pause();
            });
          } else {
            setState(() {
              widget.color = Colors.red;
              widget.controller.pause();
            });
          }
        },
        style: ElevatedButton.styleFrom(
            minimumSize: const Size.fromHeight(50),
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent),
        child: Text(widget.answer,
            style: GoogleFonts.aBeeZee(
              fontSize: 24,
              color: widget.color,
            )),
      ),
    );
  }
}


// cubit
// state
// selectedAnswer null/int -> int?
// List<QuestionModel> 
// if selectedAnswer == null -> isButtonDisabled
// event
// selectAnswer(QuestioModel)
// emit (selectedAnswer: questionModel)


// BlocProvider
  // cubit..fetchData();
// Scafold

// GetStartedButton
  // await Navigator.push();
  // context.read<TwojCubit>()..fetchQuestions();