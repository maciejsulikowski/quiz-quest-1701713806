import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_quest/app/core/enums.dart';
import 'package:quiz_quest/app/domain/models/general_model/general_quiz_model.dart';
import 'package:quiz_quest/app/features/home_page/ranking_widget/cubit/ranking_cubit.dart';
import 'package:quiz_quest/app/features/quiz_pages/general_quiz_pages/cubit/general_cubit.dart';
import 'package:quiz_quest/app/features/quiz_pages/general_quiz_pages/medium_general_quiz_page/medium_general_answer_button.dart';
import 'package:quiz_quest/app/features/quiz_pages/general_quiz_pages/medium_general_quiz_page/medium_general_lost_life_page.dart';
import 'package:quiz_quest/app/features/quiz_pages/general_quiz_pages/medium_general_quiz_page/medium_general_question_widget.dart';
import 'package:quiz_quest/app/features/quiz_pages/general_quiz_pages/medium_general_quiz_page/resume_medium_general_question_quiz_page.dart';
import 'package:quiz_quest/app/features/quiz_pages/quiz_countdown_timer/quiz_countdown_timer.dart';
import 'package:quiz_quest/app/injection_container.dart';

class MediumQuestionGeneralQuizPage extends StatefulWidget {
  const MediumQuestionGeneralQuizPage({
    super.key,
  });

  @override
  State<MediumQuestionGeneralQuizPage> createState() =>
      _MediumQuestionGeneralQuizPageState();
}

final controller = CountDownController();
late bool isButtonClicked;
bool isButtonDisabled = false;
bool isButtonNameChanged = false;
Color textColor = Colors.white;
late bool isDurationEnded;
late Color ringColor;
bool isTimeUp = false;
late int mediumGeneralGoodAnswers;
late int mediumGeneralBadAnswers;
bool isCorrectAnswer = false;
String threeLives = '❤️❤️❤️';
String twoLives = ' ❤️❤️';
String oneLive = ' ❤️';

class _MediumQuestionGeneralQuizPageState
    extends State<MediumQuestionGeneralQuizPage> {
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
    mediumGeneralGoodAnswers = 0;
    mediumGeneralBadAnswers = 0;
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

  void generateAnswers(GeneralQuizModel? generalQuizModel) {
    if (generalQuizModel != null && !answerGenerated) {
      final correctAnswer =
          generalQuizModel.results[currentIndex].correctAnswer;

      final incorrectAnswers =
          generalQuizModel.results[currentIndex].incorrectAnswers;

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
    mediumGeneralBadAnswers = 0;
    mediumGeneralGoodAnswers = 0;
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
    const int duration = 21;

    return Scaffold(
      body: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) =>
                getIt<GeneralCubit>()..getMediumGeneralCategory(),
          ),
          BlocProvider(
            create: (context) => getIt<RankingCubit>(),
          ),
        ],
        child: BlocListener<GeneralCubit, GeneralState>(
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
              context.read<GeneralCubit>().getMediumGeneralCategory();
            }
          },
          child: BlocBuilder<GeneralCubit, GeneralState>(
            builder: (context, state) {
              if (state.status == Status.loading) {
                return const Center(child: CircularProgressIndicator());
              }
              if (state.status == Status.error) {
                return const Center(child: CircularProgressIndicator());
              }

              final generalQuizModel = state.generalQuizModel;
              generateAnswers(generalQuizModel);

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
                                'Score: ${mediumGeneralGoodAnswers * 20}',
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
                                  mediumGeneralBadAnswers == 0
                                      ? threeLives
                                      : mediumGeneralBadAnswers == 1
                                          ? twoLives
                                          : mediumGeneralBadAnswers == 2
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
                          mediumGeneralBadAnswers += 1;
                          isButtonDisabled = true;
                          isTimeUp = true;
                          if (mediumGeneralBadAnswers == 3) {
                            context
                                .read<GeneralCubit>()
                                .updateMediumGeneralPoints(
                                    mediumGeneralGoodAnswers);
                            context
                                .read<RankingCubit>()
                                .updateMediumGeneralRankingPoints(
                                    mediumGeneralGoodAnswers);
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => MediumGeneralLostLifePage(
                                    goodAnswers: mediumGeneralGoodAnswers),
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
                    if (generalQuizModel != null)
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: SingleChildScrollView(
                          physics: const ScrollPhysics(),
                          child: Column(
                            children: [
                              ListView.builder(
                                itemCount: 1,
                                physics: const NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemBuilder: (context, _) {
                                  final questionNumber = currentIndex + 1;
                                  final questionNumbers =
                                      generalQuizModel.results.length;

                                  return Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      MediumGeneralQuestionWidget(
                                        question: generalQuizModel
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
                                            'Bad: $mediumGeneralBadAnswers',
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
                                            'Good: $mediumGeneralGoodAnswers',
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
                                        MediumGeneralAnswerButton(
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
                                              if (value =
                                                  currentAnswers[index] ==
                                                      generalQuizModel
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
                                          isCorrectAnswer:
                                              currentAnswers[index] ==
                                                      generalQuizModel
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
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Container(
                                                margin: const EdgeInsets.only(
                                                    bottom: 20),
                                                color: Colors.black,
                                                child: ElevatedButton(
                                                  onPressed: (isButtonClicked ||
                                                          isDurationEnded)
                                                      ? () {
                                                          setState(() {
                                                            if (currentIndex ==
                                                                generalQuizModel
                                                                        .results
                                                                        .length -
                                                                    1) {
                                                              Navigator.of(
                                                                      context)
                                                                  .push(
                                                                MaterialPageRoute(
                                                                  builder:
                                                                      (context) =>
                                                                          ResumeMediumGeneralQuizPageGames(
                                                                    badAnswers:
                                                                        mediumGeneralBadAnswers,
                                                                    goodAnswers:
                                                                        mediumGeneralGoodAnswers,
                                                                  ),
                                                                ),
                                                              );
                                                            } else if (isButtonClicked ||
                                                                isDurationEnded) {
                                                              currentIndex += 1;
                                                              isButtonClicked =
                                                                  false;
                                                              isButtonDisabled =
                                                                  false;
                                                              answerGenerated =
                                                                  false;
                                                              ringColor =
                                                                  Colors.white;
                                                              isTimeUp = false;
                                                              answerColors =
                                                                  List.filled(
                                                                currentAnswers
                                                                    .length,
                                                                Colors.white,
                                                              );
                                                            }
                                                            isDurationEnded =
                                                                false;
                                                          });
                                                          controller.start();
                                                        }
                                                      : null,
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                    foregroundColor:
                                                        Colors.white,
                                                    backgroundColor:
                                                        Colors.black,
                                                  ),
                                                  child: Text(currentIndex ==
                                                          generalQuizModel
                                                                  .results
                                                                  .length -
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
                            ],
                          ),
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
