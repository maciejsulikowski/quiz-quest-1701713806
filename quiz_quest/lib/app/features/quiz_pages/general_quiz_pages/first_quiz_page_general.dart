import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_quest/app/core/enums.dart';
import 'package:quiz_quest/app/data/data_sources/quiz_data_source/quiz_categories_data_source.dart';
import 'package:quiz_quest/app/data/data_sources/user_data_source/user_data_source.dart';
import 'package:quiz_quest/app/domain/repositories/quiz_repository/quiz_repository.dart';
import 'package:quiz_quest/app/domain/repositories/user_repository/user_repository.dart';
import 'package:quiz_quest/app/features/home_page/cubit/home_cubit.dart';
import 'package:quiz_quest/app/features/quiz_pages/films_quiz_pages/easy_films_quiz_page/second_easy_quiz_page_films.dart';
import 'package:quiz_quest/app/features/quiz_pages/films_quiz_pages/hard_films_quiz_page/second_hard_quiz_page_films.dart';
import 'package:quiz_quest/app/features/quiz_pages/films_quiz_pages/medium_films_quiz_page/second_medium_quiz_page_films.dart';
import 'package:quiz_quest/app/features/quiz_pages/games_quiz_pages/easy_games_quiz_page/second_easy_quiz_page_games.dart';
import 'package:quiz_quest/app/features/quiz_pages/games_quiz_pages/hard_games_quiz_page/second_hard_quiz_page_games.dart';
import 'package:quiz_quest/app/features/quiz_pages/games_quiz_pages/medium_games_quiz_page/medium_question_quiz_page.dart';
import 'package:quiz_quest/app/features/quiz_pages/games_quiz_pages/medium_games_quiz_page/second_medium_quiz_page_games.dart';
import 'package:quiz_quest/app/features/quiz_pages/general_quiz_pages/easy_general_quiz_page/second_easy_quiz_page_general.dart';
import 'package:quiz_quest/app/features/quiz_pages/general_quiz_pages/hard_general_quiz_page/second_hard_quiz_page_general.dart';
import 'package:quiz_quest/app/features/quiz_pages/general_quiz_pages/medium_general_quiz_page/second_medium_quiz_page_general.dart';
import 'package:quiz_quest/app/features/quiz_pages/geography_quiz_pages/easy_geography_quiz_page/second_easy_quiz_page_geography.dart';
import 'package:quiz_quest/app/features/quiz_pages/geography_quiz_pages/hard_geography_quiz_page/second_hard_quiz_page_geography.dart';
import 'package:quiz_quest/app/features/quiz_pages/geography_quiz_pages/medium_geography_quiz_page/second_medium_quiz_page_geography.dart';
import 'package:quiz_quest/app/features/quiz_pages/history_quiz_pages/easy_history_quiz_page/second_easy_quiz_page_history.dart';
import 'package:quiz_quest/app/features/quiz_pages/history_quiz_pages/hard_history_quiz_page/second_hard_quiz_page_history.dart';
import 'package:quiz_quest/app/features/quiz_pages/history_quiz_pages/medium_history_quiz_page/second_medium_quiz_page_history.dart';
import 'package:quiz_quest/app/features/quiz_pages/music_quiz_pages/easy_music_quiz_page/second_easy_quiz_page_music.dart';
import 'package:quiz_quest/app/features/quiz_pages/music_quiz_pages/hard_music_quiz_page/second_hard_quiz_page_music.dart';
import 'package:quiz_quest/app/features/quiz_pages/music_quiz_pages/medium_music_quiz_page/second_medium_quiz_page_music.dart';
import 'package:quiz_quest/app/features/quiz_pages/nature_quiz_pages/easy_nature_quiz_page/second_easy_quiz_page_nature.dart';
import 'package:quiz_quest/app/features/quiz_pages/nature_quiz_pages/hard_nature_quiz_page/second_hard_quiz_page_nature.dart';
import 'package:quiz_quest/app/features/quiz_pages/nature_quiz_pages/medium_nature_quiz_page/second_medium_quiz_page_nature.dart';
import 'package:quiz_quest/app/features/quiz_pages/sports_quiz_pages/easy_sport_quiz_page/second_easy_quiz_page_sport.dart';
import 'package:quiz_quest/app/features/quiz_pages/sports_quiz_pages/hard_sport_quiz_page/second_hard_quiz_page_sport.dart';
import 'package:quiz_quest/app/features/quiz_pages/sports_quiz_pages/medium_sport_quiz_page/second_medium_quiz_page_sport.dart';
import 'package:quiz_quest/app/injection_container.dart';

class FirstQuizPageGeneral extends StatefulWidget {
  const FirstQuizPageGeneral({
    required this.image,
    super.key,
  });

  final String image;

  @override
  State<FirstQuizPageGeneral> createState() => _FirstQuizPageGeneralState();
}

class _FirstQuizPageGeneralState extends State<FirstQuizPageGeneral> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
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
              'Choose your difficulty',
              style: GoogleFonts.aBeeZee(
                  fontSize: 46,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          EasyDifficultButton(
            image: image,
            text: 'Easy',
          ),
          const SizedBox(
            height: 30,
          ),
          MediumDifficultButton(
            image: image,
            text: 'Medium',
          ),
          const SizedBox(
            height: 30,
          ),
          HardDifficultButton(
            image: image,
            text: 'Hard',
          ),
        ],
      ),
    );
  }
}

class EasyDifficultButton extends StatelessWidget {
  const EasyDifficultButton({
    super.key,
    required this.image,
    required this.text,
  });

  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    final dynamic mediumCategory = ModalRoute.of(context)?.settings.arguments;
    final dynamic category = mediumCategory[0];
    return BlocProvider(
      create: (context) => getIt<HomeCubit>(),
      child: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
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
                    builder: (context) => SecondEasyQuizPageGeneral(
                          easyCategory: category,
                          image: image,
                        )));
              },
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(50),
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent),
              child: Text(text,
                  style: GoogleFonts.aBeeZee(
                    fontSize: 24,
                    color: Colors.white,
                  )),
            ),
          );
        },
      ),
    );
  }
}

class MediumDifficultButton extends StatelessWidget {
  const MediumDifficultButton({
    super.key,
    required this.image,
    required this.text,
  });

  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    final dynamic categories = ModalRoute.of(context)?.settings.arguments;
    final dynamic mediumCategory = categories[1];

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
              builder: (context) => SecondMediumQuizPageGeneral(
                  image: image, mediumCategory: mediumCategory)));
        },
        style: ElevatedButton.styleFrom(
            minimumSize: const Size.fromHeight(50),
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent),
        child: Text(text,
            style: GoogleFonts.aBeeZee(
              fontSize: 24,
              color: Colors.white,
            )),
      ),
    );
  }
}

class HardDifficultButton extends StatelessWidget {
  const HardDifficultButton({
    super.key,
    required this.image,
    required this.text,
  });

  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    final dynamic categories = ModalRoute.of(context)?.settings.arguments;
    final dynamic hardCategory = categories[2];

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
              builder: (context) => SecondHardQuizPageGeneral(
                    hardCategory: hardCategory,
                    image: image,
                  )));
        },
        style: ElevatedButton.styleFrom(
            minimumSize: const Size.fromHeight(50),
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent),
        child: Text(text,
            style: GoogleFonts.aBeeZee(
              fontSize: 24,
              color: Colors.white,
            )),
      ),
    );
  }
}
