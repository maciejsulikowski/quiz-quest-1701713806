import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_quest/app/core/enums.dart';
import 'package:quiz_quest/app/data/data_sources/quiz_data_source/quiz_categories_data_source.dart';
import 'package:quiz_quest/app/domain/models/films_model/films_quiz_model.dart';
import 'package:quiz_quest/app/domain/repositories/quiz_repository/quiz_repository.dart';
import 'package:quiz_quest/app/features/home_page/cubit/home_cubit.dart';
import 'package:quiz_quest/app/features/home_page/home_page.dart';

import 'package:quiz_quest/app/features/quiz_pages/films_quiz_pages/cubit/films_cubit.dart';
import 'package:quiz_quest/app/features/quiz_pages/quiz_countdown_timer/quiz_countdown_timer.dart';

class EasyQuestionQuizPage extends StatefulWidget {
  const EasyQuestionQuizPage({
    super.key,
  });

  @override
  State<EasyQuestionQuizPage> createState() => _EasyQuestionQuizPageState();
}

final controller = CountDownController();
bool isButtonClicked = false;
bool isButtonDisabled = false;
Color textColor = Colors.white;
bool isTimeUp = false;

class _EasyQuestionQuizPageState extends State<EasyQuestionQuizPage> {
  int currentIndex = 0;
  late List currentAnswers;
  List<Color> answerColors = [
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
  ];

  bool answerGenerated = false;

  @override
  void initState() {
    currentAnswers = [];
    answerColors;
    answerGenerated = false;
    isTimeUp;
    resetQuizState();
    super.initState();
  }

  void updateIsTimeUp(bool value) {
    setState(() {
      isTimeUp = value;
    });
  }

  void generateAnswers(FilmsQuizModel? filmsQuizModel) {
    if (filmsQuizModel != null && !answerGenerated) {
      final correctAnswer = filmsQuizModel.results[currentIndex].correctAnswer;

      final incorrectAnswers =
          filmsQuizModel.results[currentIndex].incorrectAnswers;

      currentAnswers = incorrectAnswers + [correctAnswer];
      currentAnswers.shuffle();
      if (answerColors.isEmpty) {
        answerColors = List<Color>.filled(currentAnswers.length, Colors.white);
      }
      answerGenerated = true;
    }
  }

  void resetQuizState() {
    currentIndex = 0;
    isButtonClicked = false;
    isButtonDisabled = false;
    textColor = Colors.white;
    answerGenerated = false;
    isTimeUp = false;
    answerColors = [
      Colors.white,
      Colors.white,
      Colors.white,
      Colors.white,
    ];
  }

  @override
  Widget build(BuildContext context) {
    const int duration = 3;

    return Scaffold(
      body: BlocProvider(
        create: (context) =>
            FilmsCubit(QuizRepository(QuizCategoriesDataSource()))
              ..getEasyFilmsCategory(),
        child: BlocListener<FilmsCubit, FilmsState>(
          listener: (context, state) async {
            if (state.status == Status.error) {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text(
                'Loading is a little bit longer please wait',
              )));
              await Future.delayed(
                const Duration(
                  seconds: 5,
                ),
              );
              context.read<FilmsCubit>().getEasyFilmsCategory();
            }
          },
          child: BlocBuilder<FilmsCubit, FilmsState>(
            builder: (context, state) {
              if (state.status == Status.loading) {
                return const Center(child: CircularProgressIndicator());
              }
              if (state.status == Status.error) {
                return const Center(child: CircularProgressIndicator());
              }

              final filmsQuizModel = state.filmsQuizModel;
              generateAnswers(filmsQuizModel);

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
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: InkWell(
                            onTap: () {
                              Navigator.pop(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const HomePage()));
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:
                                    Border.all(color: Colors.white, width: 2.0),
                              ),
                              padding: const EdgeInsets.all(10.0),
                              child:
                                  const Icon(Icons.close, color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                    CountDownTimer(
                      duration: duration,
                      controller: controller,
                      updateIsTimeUp: updateIsTimeUp,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    if (filmsQuizModel != null)
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: ListView.builder(
                          itemCount: 1,
                          shrinkWrap: true,
                          itemBuilder: (context, _) {
                            final questionNumber = currentIndex + 1;
                            final questionNumbers =
                                filmsQuizModel.results.length;

                            return Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                QuestionWidget(
                                  question: filmsQuizModel
                                      .results[currentIndex].question,
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  'Question: $questionNumber/$questionNumbers',
                                  style: GoogleFonts.aBeeZee(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                for (int index = 0;
                                    index < currentAnswers.length;
                                    index++) ...[
                                  AnswerButton(
                                    isTimeUp: isTimeUp,
                                    isButtonDisabled: (value) {
                                      setState(() {
                                        isButtonDisabled = value;
                                      });
                                    },
                                    isButtonClicked: (value) {
                                      setState(() {
                                        isButtonClicked = value;
                                      });
                                    },
                                    textcolor: answerColors[index],
                                    colorFunction: (value, index) {
                                      setState(() {
                                        answerColors[index] = value;
                                      });
                                    },
                                    isCorrectAnswer: currentAnswers[index] ==
                                            filmsQuizModel.results[currentIndex]
                                                .correctAnswer
                                        ? true
                                        : false,
                                    answer: currentAnswers[index],
                                    controller: controller,
                                    index: index,
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  )
                                ],
                                const SizedBox(
                                  height: 15,
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                          color: Colors.black,
                                          child: ElevatedButton(
                                            onPressed: isButtonClicked == false
                                                ? null
                                                : () {
                                                    setState(() {
                                                      currentIndex += 1;
                                                      isButtonClicked = false;
                                                      isButtonDisabled = false;
                                                      answerGenerated = false;
                                                      answerColors =
                                                          List.filled(
                                                              currentAnswers
                                                                  .length,
                                                              Colors.white);
                                                    });
                                                    controller.start();
                                                  },
                                            style: ElevatedButton.styleFrom(
                                              foregroundColor: Colors.white,
                                              backgroundColor: Colors.black,
                                            ),
                                            child:
                                                const Text('Next Question ➔'),
                                          )),
                                    ],
                                  ),
                                )
                              ],
                            );
                          },
                        ),
                      )
                  ],
                ),
              );
            },
          ),
        ),
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
    final modifiedQuestion = question
        .replaceAll('&quot;', '')
        .replaceAll('&#039;', '')
        .replaceAll('&aacute;', '')
        .replaceAll('&ntilde;', '')
        .replaceAll('&amp;', '')
        .replaceAll('&rsquo;', '');

    return Center(
      child: Text(
        modifiedQuestion,
        style: GoogleFonts.aBeeZee(
            fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}

class AnswerButton extends StatefulWidget {
  AnswerButton({
    required this.answer,
    required this.controller,
    required this.isCorrectAnswer,
    required this.isTimeUp,
    required this.colorFunction,
    required this.isButtonClicked,
    required this.isButtonDisabled,
    required this.textcolor,
    required this.index,
  });

  final String answer;
  final CountDownController controller;
  final bool isCorrectAnswer;
  bool isTimeUp;
  Function(Color, int) colorFunction;
  final Function(bool) isButtonClicked;
  final Function(bool) isButtonDisabled;
  Color textcolor;
  final int index;

  @override
  State<AnswerButton> createState() => _AnswerButtonState();
}

class _AnswerButtonState extends State<AnswerButton> {
  void onPressed() {
    if (isButtonDisabled) {
      return;
    }

    widget.controller.pause();

    if (widget.isCorrectAnswer || widget.isTimeUp) {
      widget.colorFunction(Colors.green, widget.index);
    } else {
      widget.colorFunction(Colors.red, widget.index);
    }
    setState(() {
      widget.textcolor =
          widget.isCorrectAnswer || widget.isTimeUp ? Colors.green : Colors.red;
    });
    widget.isButtonClicked(true);
    widget.isButtonDisabled(true);
  }

  Color color = Colors.white;

  @override
  Widget build(BuildContext context) {
    final modifiedAnswer = widget.answer
        .replaceAll('&quot;', '')
        .replaceAll('&#039;', '')
        .replaceAll('&aacute;', '')
        .replaceAll('&ntilde;', '')
        .replaceAll('&amp;', '')
        .replaceAll('&rsquo;', '');

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
            color: widget.textcolor,
          ),
        ),
      ),
    );
  }
}
