import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_quest/app/core/enums.dart';
import 'package:quiz_quest/app/data/data_sources/quiz_data_source/quiz_categories_data_source.dart';
import 'package:quiz_quest/app/domain/models/animals_model/animals_quiz_model.dart';
import 'package:quiz_quest/app/domain/models/art_model/art_quiz_model.dart';
import 'package:quiz_quest/app/domain/models/computer_science_model/computer_science_quiz_model.dart';
import 'package:quiz_quest/app/domain/models/geography_model/geography_quiz_model.dart';
import 'package:quiz_quest/app/domain/models/history_model/history_quiz_model.dart';
import 'package:quiz_quest/app/domain/models/politics_model/politics_quiz_model.dart';
import 'package:quiz_quest/app/domain/repositories/quiz_repository/quiz_repository.dart';
import 'package:quiz_quest/app/features/quiz_pages/animals_quiz_pages/question_quiz_page_animals.dart';
import 'package:quiz_quest/app/features/quiz_pages/art_quiz_pages/question_quiz_page_art.dart';
import 'package:quiz_quest/app/features/quiz_pages/computer_science_pages/question_quiz_page_computer_science.dart';
import 'package:quiz_quest/app/features/quiz_pages/geography_quiz_pages/question_quiz_page_geography.dart';
import 'package:quiz_quest/app/features/quiz_pages/history_quiz_pages/question_quiz_page_history.dart';
import 'package:quiz_quest/app/features/quiz_pages/politics_quiz_pages/cubit/politics_cubit.dart';
import 'package:quiz_quest/app/features/quiz_pages/politics_quiz_pages/question_quiz_page_politics.dart';

class FirstQuizPagePolitics extends StatefulWidget {
  const FirstQuizPagePolitics({
    required this.image,
    super.key,
  });

  final String image;

  @override
  State<FirstQuizPagePolitics> createState() => _FirstQuizPagePoliticsState();
}

class _FirstQuizPagePoliticsState extends State<FirstQuizPagePolitics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quizz'),
      ),
      body: QuizzPage(
        image: widget.image,
      ),
    );
  }
}

class QuizzPage extends StatelessWidget {
  const QuizzPage({
    required this.image,
    super.key,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          PoliticsCubit(QuizRepository(QuizCategoriesDataSource()))
            ..getPoliticsCategory(),
      child: BlocBuilder<PoliticsCubit, PoliticsState>(
        builder: (context, state) {

          final politicsModel = state.politicsQuizModel;

          if (state.status == Status.loading) {
            return const Center(child: CircularProgressIndicator());
          }

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
                Center(
                  child: CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage(image),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Center(
                  child: Text(
                    'Rules',
                    style: GoogleFonts.aBeeZee(
                        fontSize: 46,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const TextWidget(text: 'You have 20 second to answer'),
                const SizedBox(
                  height: 30,
                ),
                const TextWidget(text: 'You have 3 lives ❤️❤️❤️'),
                const SizedBox(
                  height: 30,
                ),
                const TextWidget(text: '1 good answer = 10 points 💎'),
                const SizedBox(
                  height: 30,
                ),
                const TextWidget(
                    text:
                        'Go as far as you can and keep moving forward  🔥 🧨'),
                const SizedBox(
                  height: 30,
                ),
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
                        Radius.circular(25.0),
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
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => QuestionQuizPagePolitics(
                                model: politicsModel,
                              )));
                    },
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size.fromHeight(50),
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent),
                    child: Text('''Ready? Let's go!''',
                        style: GoogleFonts.aBeeZee(
                          fontSize: 24,
                          color: Colors.white,
                        )),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class TextWidget extends StatelessWidget {
  const TextWidget({
    required this.text,
    super.key,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16),
      child: Text(
        text,
        style: GoogleFonts.aBeeZee(
          fontSize: 24,
          color: Colors.white,
        ),
      ),
    );
  }
}
