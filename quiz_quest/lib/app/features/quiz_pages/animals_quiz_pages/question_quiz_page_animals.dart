import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_quest/app/core/enums.dart';
import 'package:quiz_quest/app/data/data_sources/quiz_data_source/quiz_categories_data_source.dart';
import 'package:quiz_quest/app/domain/models/animals_model/animals_quiz_model.dart';
import 'package:quiz_quest/app/domain/repositories/quiz_repository/quiz_repository.dart';
import 'package:quiz_quest/app/features/home_page/cubit/home_cubit.dart';
import 'package:quiz_quest/app/features/home_page/home_page.dart';
import 'package:quiz_quest/app/features/quiz_pages/animals_quiz_pages/cubit/animals_cubit.dart';
import 'package:quiz_quest/app/features/quiz_pages/quiz_countdown_timer/quiz_countdown_timer.dart';

class QuestionQuizPage extends StatefulWidget {
  const QuestionQuizPage({
    super.key,
  });

  @override
  State<QuestionQuizPage> createState() => _QuestionQuizPageState();
}

class _QuestionQuizPageState extends State<QuestionQuizPage> {
  @override
  Widget build(BuildContext context) {
    const int duration = 21;
    Color color = Colors.white;
    // int currentIndex = 0;
    // late String question;
    // late List<dynamic> list;
    // late String correctAnswer;
    final controller = CountDownController();
    bool isButtonBlocked = true;

    return BlocProvider(
      create: (context) =>
          AnimalsCubit(QuizRepository(QuizCategoriesDataSource()))
            ..getAnimalsCategory(),
      child: BlocBuilder<AnimalsCubit, AnimalsState>(
        builder: (context, state) {
          if (state.status == Status.loading) {
            return const Center(child: CircularProgressIndicator());
          }

          final animalsModel = state.animalsQuizModel;

          return Scaffold(
            body: Container(
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
                            Navigator.push(
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
                            child: const Icon(Icons.close, color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CountDownTimer(duration: duration, controller: controller),
                  const SizedBox(
                    height: 15,
                  ),
                  if (animalsModel != null)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: ListView.builder(
                        itemCount: 1,
                        shrinkWrap: true,
                        physics: const ClampingScrollPhysics(),
                        itemBuilder: (context, index) {
                          final correctAnswer =
                              animalsModel.results[index].correctAnswer;
                          final incorrectAnswers =
                              animalsModel.results[index].incorrectAnswers;
                          final list = incorrectAnswers + [correctAnswer];
                          list.shuffle();

                          return Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              QuestionWidget(
                                question: animalsModel.results[index].question,
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              AnswerWidget(
                                // isButtonBlocked: isButtonBlocked,
                                // color: color,
                                // controller: controller,
                                answer: list,
                                // isCorrectAnswer: answer == correctAnswer ? true : false,
                              ),
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
                                          onPressed: () {},
                                          //isButtonBlocked
                                          //     ? null
                                          //     : () {
                                          //         controller.start();
                                          //         setState(() {
                                          //           currentIndex =
                                          //               currentIndex + 1;
                                          //         });
                                          //       },
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
                          );
                        },
                      ),
                    )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

// class QuizzPage extends StatefulWidget {
//   const QuizzPage({
//     super.key,
//   });

//   @override
//   State<QuizzPage> createState() => _QuizzPageState();
// }

// class _QuizzPageState extends State<QuizzPage> {
//   int currentIndex = 0;
//   late String question;
//   late List<dynamic> list;
//   late String correctAnswer;
//   final controller = CountDownController();
//   bool isButtonBlocked = true;

//   // void updateAnswers() {
//   //   question = widget.animalsQuizModel!.results[currentIndex].question;
//   //   List incorrectAnswers =
//   //       widget.animalsQuizModel!.results[currentIndex].incorrectAnswers;
//   //   correctAnswer =
//   //       widget.animalsQuizModel!.results[currentIndex].correctAnswer;
//   //   list = incorrectAnswers + [correctAnswer];
//   //   list.shuffle();
//   // }

//   // @override
//   // void initState() {
//   //   super.initState();
//   //   updateAnswers();
//   // }
// }

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
    // required this.isCorrectAnswer,
    // required this.controller,
    // required this.color,
    // required this.isButtonBlocked,
    super.key,
  });

  final List answer;
  // final bool isCorrectAnswer;
  // final CountDownController controller;
  // Color color;
  // final bool isButtonBlocked;

  @override
  State<AnswerWidget> createState() => _AnswerWidgetState();
}

class _AnswerWidgetState extends State<AnswerWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AnswerButton(
          answer: widget.answer[0],
        ),
        SizedBox(
          height: 10,
        ),
        AnswerButton(
          answer: widget.answer[1],
        ),
        SizedBox(
          height: 10,
        ),
        AnswerButton(
          answer: widget.answer[2],
        ),
        SizedBox(
          height: 10,
        ),
        AnswerButton(
          answer: widget.answer[3],
        ),

        // Container(
        //   margin: const EdgeInsets.symmetric(horizontal: 20),
        //   decoration: BoxDecoration(
        //       gradient: const LinearGradient(
        //         colors: [
        //           Color.fromRGBO(143, 165, 255, 1),
        //           Color.fromRGBO(10, 53, 132, 1),
        //         ],
        //         begin: Alignment.centerLeft,
        //         end: Alignment.centerRight,
        //       ),
        //       borderRadius: const BorderRadius.all(
        //         Radius.circular(6.0),
        //       ),
        //       boxShadow: [
        //         BoxShadow(
        //           color: Colors.black.withOpacity(0.1),
        //           spreadRadius: 4,
        //           blurRadius: 10,
        //           offset: const Offset(0, 3),
        //         )
        //       ]),
        //   child: ElevatedButton(
        //     onPressed: () {},
        //     style: ElevatedButton.styleFrom(
        //         minimumSize: const Size.fromHeight(50),
        //         backgroundColor: Colors.transparent,
        //         shadowColor: Colors.transparent),
        //     child: Text(widget.firstBadAnswer,
        //         style: GoogleFonts.aBeeZee(
        //           fontSize: 24,
        //           color: Colors.white,
        //         )),
        //   ),
        // ),
      ],
    );
  }
}

class AnswerButton extends StatelessWidget {
  const AnswerButton({
    super.key,
    required this.answer,
  });

  final String answer;

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