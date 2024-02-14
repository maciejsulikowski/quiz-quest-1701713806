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
import 'package:quiz_quest/app/domain/repositories/quiz_repository/quiz_repository.dart';
import 'package:quiz_quest/app/domain/repositories/user_repository/user_repository.dart';
import 'package:quiz_quest/app/features/quiz_pages/films_quiz_pages/cubit/films_cubit.dart';
import 'package:quiz_quest/app/features/quiz_pages/films_quiz_pages/easy_films_quiz_page/easy_lost_life_page.dart';
import 'package:quiz_quest/app/features/quiz_pages/films_quiz_pages/easy_films_quiz_page/resume_easy_question_quiz_page.dart';
import 'package:quiz_quest/app/features/quiz_pages/films_quiz_pages/medium_films_quiz_page/resume_medium_question_quiz_page.dart';
import 'package:quiz_quest/app/features/quiz_pages/games_quiz_pages/cubit/games_cubit.dart';
import 'package:quiz_quest/app/features/quiz_pages/games_quiz_pages/easy_games_quiz_page/easy_games_lost_life_page.dart';
import 'package:quiz_quest/app/features/quiz_pages/games_quiz_pages/medium_games_quiz_page/medium_games_lost_life_page.dart';
import 'package:quiz_quest/app/features/quiz_pages/quiz_countdown_timer/quiz_countdown_timer.dart';

class MediumQuestionGamesQuizPage extends StatefulWidget {
  const MediumQuestionGamesQuizPage({
    super.key,
  });

  @override
  State<MediumQuestionGamesQuizPage> createState() =>
      _MediumQuestionGamesQuizPageState();
}

final controller = CountDownController();
late bool isButtonClicked;
bool isButtonDisabled = false;
bool isButtonNameChanged = false;
Color textColor = Colors.white;
late bool isDurationEnded;
late Color ringColor;
bool isTimeUp = false;
late int mediumGamesGoodAnswers;
late int mediumGamesBadAnswers;
bool isCorrectAnswer = false;
String threeLives = '❤️❤️❤️';
String twoLives = ' ❤️❤️';
String oneLive = ' ❤️';

class _MediumQuestionGamesQuizPageState extends State<MediumQuestionGamesQuizPage> {
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
    mediumGamesGoodAnswers = 0;
    mediumGamesBadAnswers = 0;
    currentAnswers = [];
    answerColors;
    answerGenerated = false;
    isTimeUp;
    isButtonClicked = false;
    isButtonNameChanged;
    isDurationEnded = false;
    ringColor = Colors.white;
    resetQuizState();
    super.initState();
  }

  void generateAnswers(GamesQuizModel? gamesQuizModel) {
    if (gamesQuizModel != null && !answerGenerated) {
      final correctAnswer = gamesQuizModel.results[currentIndex].correctAnswer;

      final incorrectAnswers =
          gamesQuizModel.results[currentIndex].incorrectAnswers;

      currentAnswers = incorrectAnswers + [correctAnswer];
      currentAnswers.shuffle();
      if (answerColors.isEmpty) {
        answerColors = List<Color>.filled(currentAnswers.length, Colors.white);
      }
      answerGenerated = true;
    }
  }

  void resetQuizState() {
    isButtonNameChanged = false;
    mediumGamesBadAnswers = 0;
    mediumGamesGoodAnswers = 0;
    currentIndex = 0;
    isButtonClicked = false;
    isButtonDisabled = false;
    textColor = Colors.white;
    answerGenerated = false;
    isTimeUp = false;
    isDurationEnded = false;

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
        create: (context) => GamesCubit(
            QuizRepository(QuizCategoriesRetrofitDataSource(Dio())),
            UserRepository(UserDataSource()))
          ..getMediumGamesCategory(),
        child: BlocListener<GamesCubit, GamesState>(
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
              // ignore: use_build_context_synchronously
              context.read<GamesCubit>().getEasyGamesCategory();
            }
          },
          child: BlocBuilder<GamesCubit, GamesState>(
            builder: (context, state) {
              if (state.status == Status.loading) {
                return const Center(child: CircularProgressIndicator());
              }
              if (state.status == Status.error) {
                return const Center(child: CircularProgressIndicator());
              }

              final gamesQuizModel = state.gamesQuizModel;
              generateAnswers(gamesQuizModel);

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
                    Stack(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20.0),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.pop(
                                      context,
                                    );
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          color: Colors.white, width: 2.0),
                                    ),
                                    padding: const EdgeInsets.all(10.0),
                                    child: const Icon(Icons.close,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                'Score: ${mediumGamesGoodAnswers * 20}',
                                style: GoogleFonts.aBeeZee(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(right: 20.0),
                                child: Text(
                                  mediumGamesBadAnswers == 0
                                      ? threeLives
                                      : mediumGamesBadAnswers == 1
                                          ? twoLives
                                          : mediumGamesBadAnswers == 2
                                              ? oneLive
                                              : '',
                                  style: GoogleFonts.aBeeZee(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    CountDownTimer(
                      setDurationEnd: (value) {
                        setState(() {
                          isDurationEnded = value;
                          ringColor = Colors.red;
                          mediumGamesBadAnswers += 1;
                          isButtonDisabled = true;
                          isTimeUp = true;
                          if (mediumGamesBadAnswers == 3) {
                            context
                                .read<GamesCubit>()
                                .updateMediumGamesPoints(mediumGamesGoodAnswers);
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => MediumGamesLostLifePage(
                                    goodAnswers: mediumGamesGoodAnswers),
                              ),
                            );
                          }
                        });
                      },
                      isDurationEnded: isDurationEnded,
                      isButtonClicked: isButtonClicked,
                      ringColor: ringColor,
                      duration: duration,
                      controller: controller,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    if (gamesQuizModel != null)
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: ListView.builder(
                          itemCount: 1,
                          shrinkWrap: true,
                          itemBuilder: (context, _) {
                            final questionNumber = currentIndex + 1;
                            final questionNumbers =
                                gamesQuizModel.results.length;

                            return Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                QuestionWidget(
                                  question: gamesQuizModel
                                      .results[currentIndex].question,
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      'Bad: $mediumGamesBadAnswers',
                                      style: GoogleFonts.aBeeZee(
                                          fontSize: 20,
                                          color: Colors.red,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'Question: $questionNumber/$questionNumbers',
                                      style: GoogleFonts.aBeeZee(
                                          fontSize: 20,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'Good: $mediumGamesGoodAnswers',
                                      style: GoogleFonts.aBeeZee(
                                          fontSize: 20,
                                          color: Colors.green,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                for (int index = 0;
                                    index < currentAnswers.length;
                                    index++) ...[
                                  AnswerButton(
                                    isTimeUp: isTimeUp,
                                    duration: duration,
                                    isButtonDisabled: (value) {
                                      setState(() {
                                        isButtonDisabled = value;
                                      });
                                    },
                                    isButtonClicked: (value) {
                                      setState(() {
                                        isButtonClicked = value;
                                        if (value = currentAnswers[index] ==
                                            gamesQuizModel.results[currentIndex]
                                                .correctAnswer) {
                                          ringColor = Colors.green;
                                        } else {
                                          ringColor = Colors.red;
                                        }
                                      });
                                    },
                                    textcolor: answerColors[index],
                                    colorFunction: (value, index) {
                                      setState(() {
                                        answerColors[index] = value;
                                      });
                                    },
                                    isCorrectAnswer: currentAnswers[index] ==
                                            gamesQuizModel.results[currentIndex]
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
                                            onPressed: (isButtonClicked ||
                                                    isDurationEnded)
                                                ? () {
                                                    setState(() {
                                                      if (currentIndex ==
                                                          gamesQuizModel.results
                                                                  .length -
                                                              1) {
                                                        Navigator.of(context)
                                                            .push(
                                                          MaterialPageRoute(
                                                            builder: (context) =>
                                                                ResumeMediumQuizPageFilms(
                                                              badAnswers:
                                                                  mediumGamesBadAnswers,
                                                              goodAnswers:
                                                                  mediumGamesGoodAnswers,
                                                            ),
                                                          ),
                                                        );
                                                      } else if (isButtonClicked ||
                                                          isDurationEnded) {
                                                        currentIndex += 1;
                                                        isButtonClicked = false;
                                                        isButtonDisabled =
                                                            false;
                                                        answerGenerated = false;
                                                        ringColor =
                                                            Colors.white;
                                                        isTimeUp = false;
                                                        answerColors =
                                                            List.filled(
                                                          currentAnswers.length,
                                                          Colors.white,
                                                        );
                                                      }
                                                      isDurationEnded = false;
                                                    });
                                                    controller.start();
                                                  }
                                                : null,
                                            style: ElevatedButton.styleFrom(
                                              foregroundColor: Colors.white,
                                              backgroundColor: Colors.black,
                                            ),
                                            child: Text(currentIndex ==
                                                    gamesQuizModel
                                                            .results.length -
                                                        1
                                                ? 'Show your results'
                                                : 'Next Question ➔'),
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
  State<AnswerButton> createState() => _AnswerButtonState();
}

class _AnswerButtonState extends State<AnswerButton> {
  void onPressed() {
    if (isButtonDisabled) {
      return;
    }

    widget.controller.pause();

    if (widget.isCorrectAnswer) {
      widget.colorFunction(Colors.green, widget.index);
      mediumGamesGoodAnswers += 1;
    } else {
      widget.colorFunction(Colors.red, widget.index);
      mediumGamesBadAnswers += 1;
      if (mediumGamesBadAnswers == 3) {
        context.read<GamesCubit>().updateMediumGamesPoints(mediumGamesGoodAnswers);
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) =>
                MediumGamesLostLifePage(goodAnswers: mediumGamesGoodAnswers),
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
            color: widget.isTimeUp && widget.isCorrectAnswer
                ? Colors.green
                : widget.textcolor,
          ),
        ),
      ),
    );
  }
}
