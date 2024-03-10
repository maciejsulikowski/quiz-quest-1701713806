import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_quest/app/core/enums.dart';
import 'package:quiz_quest/app/domain/models/films_model/films_quiz_model.dart';
import 'package:quiz_quest/app/features/home_page/ranking_widget/cubit/ranking_cubit.dart';
import 'package:quiz_quest/app/features/quiz_pages/films_quiz_pages/cubit/films_cubit.dart';
import 'package:quiz_quest/app/features/quiz_pages/films_quiz_pages/medium_films_quiz_page/medium_films_answer_button.dart';
import 'package:quiz_quest/app/features/quiz_pages/films_quiz_pages/medium_films_quiz_page/medium_films_question_widget.dart';
import 'package:quiz_quest/app/features/quiz_pages/films_quiz_pages/medium_films_quiz_page/medium_lost_life_page.dart';
import 'package:quiz_quest/app/features/quiz_pages/films_quiz_pages/medium_films_quiz_page/resume_medium_question_quiz_page.dart';
import 'package:quiz_quest/app/features/quiz_pages/quiz_countdown_timer/quiz_countdown_timer.dart';
import 'package:quiz_quest/app/injection_container.dart';

class MediumQuestionQuizPage extends StatefulWidget {
  const MediumQuestionQuizPage({
    super.key,
  });

  @override
  State<MediumQuestionQuizPage> createState() => _MediumQuestionQuizPageState();
}

final controller = CountDownController();
late bool isButtonClicked;
bool isButtonDisabled = false;
bool isButtonNameChanged = false;
Color textColor = Colors.white;
late bool isDurationEnded;
late Color ringColor;
bool isTimeUp = false;
late int mediumFilmsGoodAnswers;
late int mediumFilmsBadAnswers;
bool isCorrectAnswer = false;
String threeLives = '❤️❤️❤️';
String twoLives = ' ❤️❤️';
String oneLive = ' ❤️';

class _MediumQuestionQuizPageState extends State<MediumQuestionQuizPage> {
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
    mediumFilmsGoodAnswers = 0;
    mediumFilmsBadAnswers = 0;
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
    isButtonNameChanged = false;
    mediumFilmsBadAnswers = 0;
    mediumFilmsGoodAnswers = 0;
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
            create: (context) => getIt<FilmsCubit>()..getMediumFilmsCategory(),
          ),
          BlocProvider(
            create: (context) => getIt<RankingCubit>(),
          ),
        ],
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
              // ignore: use_build_context_synchronously
              context.read<FilmsCubit>().getMediumFilmsCategory();
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
                                'Score: ${mediumFilmsGoodAnswers * 20}',
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
                                  mediumFilmsBadAnswers == 0
                                      ? threeLives
                                      : mediumFilmsBadAnswers == 1
                                          ? twoLives
                                          : mediumFilmsBadAnswers == 2
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
                          mediumFilmsBadAnswers += 1;
                          isButtonDisabled = true;
                          isTimeUp = true;
                          if (mediumFilmsBadAnswers == 3) {
                            context.read<FilmsCubit>().updateMediumFilmsPoints(
                                mediumFilmsGoodAnswers);
                            context
                                .read<RankingCubit>()
                                .updateMediumFilmsRankingPoints(
                                    mediumFilmsGoodAnswers);
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => MediumLostLifePage(
                                    goodAnswers: mediumFilmsGoodAnswers),
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
                    if (filmsQuizModel != null)
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
                                      filmsQuizModel.results.length;

                                  return Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      MediumFilmsQuestionWidget(
                                        question: filmsQuizModel
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
                                            'Bad: $mediumFilmsBadAnswers',
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
                                            'Good: $mediumFilmsGoodAnswers',
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
                                        MediumFilmsAnswerButton(
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
                                                      filmsQuizModel
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
                                                      filmsQuizModel
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
                                                                filmsQuizModel
                                                                        .results
                                                                        .length -
                                                                    1) {
                                                              Navigator.of(
                                                                      context)
                                                                  .push(
                                                                MaterialPageRoute(
                                                                  builder:
                                                                      (context) =>
                                                                          ResumeMediumQuizPageFilms(
                                                                    badAnswers:
                                                                        mediumFilmsBadAnswers,
                                                                    goodAnswers:
                                                                        mediumFilmsGoodAnswers,
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
                                                          filmsQuizModel.results
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
