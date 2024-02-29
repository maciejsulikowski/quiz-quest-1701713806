import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_quest/app/core/enums.dart';
import 'package:quiz_quest/app/domain/models/sports_model/sports_quiz_model.dart';
import 'package:quiz_quest/app/features/home_page/ranking_widget/cubit/ranking_cubit.dart';
import 'package:quiz_quest/app/features/quiz_pages/quiz_countdown_timer/quiz_countdown_timer.dart';
import 'package:quiz_quest/app/features/quiz_pages/sports_quiz_pages/cubit/sport_cubit.dart';
import 'package:quiz_quest/app/features/quiz_pages/sports_quiz_pages/easy_sport_quiz_page/easy_sport_answer_button.dart';
import 'package:quiz_quest/app/features/quiz_pages/sports_quiz_pages/easy_sport_quiz_page/easy_sport_lost_life_quiz_page.dart';
import 'package:quiz_quest/app/features/quiz_pages/sports_quiz_pages/easy_sport_quiz_page/easy_sport_question_widget.dart';
import 'package:quiz_quest/app/features/quiz_pages/sports_quiz_pages/easy_sport_quiz_page/resume_easy_sport_question_quiz_page.dart';
import 'package:quiz_quest/app/injection_container.dart';

class EasyQuestionSportQuizPage extends StatefulWidget {
  const EasyQuestionSportQuizPage({
    super.key,
  });

  @override
  State<EasyQuestionSportQuizPage> createState() =>
      _EasyQuestionSportQuizPageState();
}

final controller = CountDownController();
late bool isButtonClicked;
bool isButtonDisabled = false;
bool isButtonNameChanged = false;
Color textColor = Colors.white;
late bool isDurationEnded;
late Color ringColor;
bool isTimeUp = false;
late int easySportGoodAnswers;
late int easySportBadAnswers;
bool isCorrectAnswer = false;
String threeLives = '❤️❤️❤️';
String twoLives = ' ❤️❤️';
String oneLive = ' ❤️';

class _EasyQuestionSportQuizPageState extends State<EasyQuestionSportQuizPage> {
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
    easySportGoodAnswers = 0;
    easySportBadAnswers = 0;
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

  void generateAnswers(SportsQuizModel? sportsQuizModel) {
    if (sportsQuizModel != null && !answerGenerated) {
      final correctAnswer = sportsQuizModel.results[currentIndex].correctAnswer;

      final incorrectAnswers =
          sportsQuizModel.results[currentIndex].incorrectAnswers;

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
    easySportBadAnswers = 0;
    easySportGoodAnswers = 0;
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
      body: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => getIt<SportCubit>()..getEasySportsCategory(),
          ),
          BlocProvider(
            create: (context) => getIt<RankingCubit>(),
          ),
        ],
        child: BlocListener<SportCubit, SportState>(
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
              context.read<SportCubit>().getEasySportsCategory();
            }
          },
          child: BlocBuilder<SportCubit, SportState>(
            builder: (context, state) {
              if (state.status == Status.loading) {
                return const Center(child: CircularProgressIndicator());
              }
              if (state.status == Status.error) {
                return const Center(child: CircularProgressIndicator());
              }

              final sportsQuizModel = state.sportsQuizModel;
              generateAnswers(sportsQuizModel);

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
                                'Score: ${easySportGoodAnswers * 10}',
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
                                  easySportBadAnswers == 0
                                      ? threeLives
                                      : easySportBadAnswers == 1
                                          ? twoLives
                                          : easySportBadAnswers == 2
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
                          easySportBadAnswers += 1;
                          isButtonDisabled = true;
                          isTimeUp = true;
                          if (easySportBadAnswers == 3) {
                            context
                                .read<SportCubit>()
                                .updateEasySportsPoints(easySportGoodAnswers);
                            context
                                .read<RankingCubit>()
                                .updateEasySportRankingPoints(
                                    easySportGoodAnswers);
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => EasySportLostLifePage(
                                    goodAnswers: easySportGoodAnswers),
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
                    if (sportsQuizModel != null)
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: ListView.builder(
                          itemCount: 1,
                          shrinkWrap: true,
                          itemBuilder: (context, _) {
                            final questionNumber = currentIndex + 1;
                            final questionNumbers =
                                sportsQuizModel.results.length;

                            return Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                EasySportQuestionWidget(
                                  question: sportsQuizModel
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
                                      'Bad: $easySportBadAnswers',
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
                                      'Good: $easySportGoodAnswers',
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
                                  EasySportAnswerButton(
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
                                            sportsQuizModel
                                                .results[currentIndex]
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
                                            sportsQuizModel
                                                .results[currentIndex]
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
                                                          sportsQuizModel
                                                                  .results
                                                                  .length -
                                                              1) {
                                                        Navigator.of(context)
                                                            .push(
                                                          MaterialPageRoute(
                                                            builder: (context) =>
                                                                ResumeEasySportQuizPageGames(
                                                              badAnswers:
                                                                  easySportBadAnswers,
                                                              goodAnswers:
                                                                  easySportGoodAnswers,
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
                                                    sportsQuizModel
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
