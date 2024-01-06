import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_quest/app/domain/models/animals_model/animals_quiz_model.dart';
import 'package:quiz_quest/app/domain/models/art_model/art_quiz_model.dart';
import 'package:quiz_quest/app/domain/models/computer_science_model/computer_science_quiz_model.dart';
import 'package:quiz_quest/app/domain/models/geography_model/geography_quiz_model.dart';
import 'package:quiz_quest/app/domain/models/history_model/history_quiz_model.dart';
import 'package:quiz_quest/app/domain/models/politics_model/politics_quiz_model.dart';
import 'package:quiz_quest/app/domain/models/sports_model/sports_quiz_model.dart';
import 'package:quiz_quest/app/domain/models/vehicles_model/vehicles_quiz_model.dart';
import 'package:quiz_quest/app/features/home_page/cubit/home_cubit.dart';
import 'package:quiz_quest/app/features/quiz_pages/animals_quiz_pages/first_quiz_page_animals.dart';
import 'package:quiz_quest/app/features/quiz_pages/art_quiz_pages/first_quiz_page_art.dart';
import 'package:quiz_quest/app/features/quiz_pages/computer_science_pages/first_quiz_page_computer_science.dart';
import 'package:quiz_quest/app/features/quiz_pages/geography_quiz_pages/first_quiz_page_geography.dart';
import 'package:quiz_quest/app/features/quiz_pages/history_quiz_pages/first_quiz_page_history.dart';
import 'package:quiz_quest/app/features/quiz_pages/politics_quiz_pages/first_quiz_page_politics.dart';
import 'package:quiz_quest/app/features/quiz_pages/sports_quiz_pages/first_quiz_page_sport.dart';
import 'package:quiz_quest/app/features/quiz_pages/vehicles_quiz_pages/first_quiz_page_vehicles.dart';
import 'package:quiz_quest/app/features/user_page/user_account.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomePage'),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (newIndex) {
            setState(() {
              currentIndex = newIndex;
            });
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.quiz,
                ),
                label: 'Quizz'),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'My Account',
            ),
          ]),
      body: SafeArea(
        child: Builder(builder: (context) {
          if (currentIndex == 0) {
            return const QuizzPage();
          }
          return const UserAccount();
        }),
      ),
    );
  }
}

class QuizzPage extends StatelessWidget {
  const QuizzPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          final animalsModel = state.animalsModel;
          final sportsModel = state.sportsModel;
          final artsModel = state.artModel;
          final computerScienceModel = state.computerScienceModel;
          final geographyModel = state.geographyModel;
          final historyModel = state.historyModel;
          final politicsModel = state.politicsModel;
          final vehiclesModel = state.vehiclesModel;
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
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Hi, user 👋',
                        style: GoogleFonts.aBeeZee(
                            fontSize: 24,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      const CircleAvatar(
                        child: Icon(Icons.question_mark),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '''Let's play''',
                        style: GoogleFonts.aBeeZee(
                            fontSize: 46,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32.0),
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [
                            Color.fromARGB(255, 94, 128, 239),
                            Color.fromARGB(255, 76, 75, 167),
                          ],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.red),
                    child: Text(
                      'Points: 100💎',
                      style: GoogleFonts.aBeeZee(
                          fontSize: 28,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      QuizzCategoryWidget(
                        model: animalsModel,
                        name: 'Animals',
                        image: 'images/animal.png',
                      ),
                      QuizzCategoryWidget3(
                        model: artsModel,
                        name: 'Art',
                        image: 'images/art.png',
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      QuizzCategoryWidget4(
                        model: computerScienceModel,
                        name: 'Computer Science',
                        image: 'images/computer.png',
                      ),
                      QuizzCategoryWidget5(
                        model: geographyModel,
                        name: 'Geography',
                        image: 'images/geography.png',
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      QuizzCategoryWidget6(
                        model: historyModel,
                        name: 'History',
                        image: 'images/history.png',
                      ),
                      QuizzCategoryWidget7(
                        model: politicsModel,
                        name: 'Politics',
                        image: 'images/politics.png',
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      QuizzCategoryWidget2(
                        model: sportsModel,
                        name: 'Sport',
                        image: 'images/ball.png',
                      ),
                      QuizzCategoryWidget8(
                        model: vehiclesModel,
                        name: 'Vehicles',
                        image: 'images/vehicle.png',
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class QuizzCategoryWidget extends StatelessWidget {
  const QuizzCategoryWidget({
    required this.name,
    required this.image,
    required this.model,
    super.key,
  });

  final String name;
  final String image;
  final AnimalsQuizModel? model;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => FirstQuizPageAnimals(
                  model: model,
                  image: image,
                )));
      },
      child: DetailsQuizzWidget(
        name: name,
        image: image,
      ),
    );
  }
}

class QuizzCategoryWidget2 extends StatelessWidget {
  const QuizzCategoryWidget2({
    required this.name,
    required this.image,
    required this.model,
    super.key,
  });

  final String name;
  final String image;
  final SportsQuizModel? model;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => FirstQuizPageSport(
                  model: model,
                  image: image,
                )));
      },
      child: DetailsQuizzWidget(
        name: name,
        image: image,
      ),
    );
  }
}

class QuizzCategoryWidget3 extends StatelessWidget {
  const QuizzCategoryWidget3({
    required this.name,
    required this.image,
    required this.model,
    super.key,
  });

  final String name;
  final String image;
  final ArtQuizModel? model;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => FirstQuizPageArt(
                  model: model,
                  image: image,
                )));
      },
      child: DetailsQuizzWidget(
        name: name,
        image: image,
      ),
    );
  }
}

class QuizzCategoryWidget4 extends StatelessWidget {
  const QuizzCategoryWidget4({
    required this.name,
    required this.image,
    required this.model,
    super.key,
  });

  final String name;
  final String image;
  final ComputerScienceQuizModel? model;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => FirstQuizPageComputerScience(
                  model: model,
                  image: image,
                )));
      },
      child: DetailsQuizzWidget(
        name: name,
        image: image,
      ),
    );
  }
}

class QuizzCategoryWidget5 extends StatelessWidget {
  const QuizzCategoryWidget5({
    required this.name,
    required this.image,
    required this.model,
    super.key,
  });

  final String name;
  final String image;
  final GeographyQuizModel? model;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => FirstQuizPageGeography(
                  model: model,
                  image: image,
                )));
      },
      child: DetailsQuizzWidget(
        name: name,
        image: image,
      ),
    );
  }
}

class QuizzCategoryWidget6 extends StatelessWidget {
  const QuizzCategoryWidget6({
    required this.name,
    required this.image,
    required this.model,
    super.key,
  });

  final String name;
  final String image;
  final HistoryQuizModel? model;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => FirstQuizPageHistory(
                  model: model,
                  image: image,
                )));
      },
      child: DetailsQuizzWidget(
        name: name,
        image: image,
      ),
    );
  }
}

class QuizzCategoryWidget7 extends StatelessWidget {
  const QuizzCategoryWidget7({
    required this.name,
    required this.image,
    required this.model,
    super.key,
  });

  final String name;
  final String image;
  final PoliticsQuizModel? model;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => FirstQuizPagePolitics(
                  model: model,
                  image: image,
                )));
      },
      child: DetailsQuizzWidget(
        name: name,
        image: image,
      ),
    );
  }
}

class QuizzCategoryWidget8 extends StatelessWidget {
  const QuizzCategoryWidget8({
    required this.name,
    required this.image,
    required this.model,
    super.key,
  });

  final String name;
  final String image;
  final VehiclesQuizModel? model;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => FirstQuizPageVehicles(
                  model: model,
                  image: image,
                )));
      },
      child: DetailsQuizzWidget(
        name: name,
        image: image,
      ),
    );
  }
}

class DetailsQuizzWidget extends StatelessWidget {
  const DetailsQuizzWidget({
    required this.name,
    required this.image,
    super.key,
  });

  final String name;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: const LinearGradient(
          colors: [
            Color.fromARGB(255, 94, 128, 239),
            Color.fromARGB(255, 76, 75, 167),
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
      child: Column(
        children: [
          Expanded(
            child: Text(
              name,
              style: GoogleFonts.aBeeZee(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          CircleAvatar(
            backgroundImage: AssetImage(image),
            radius: 35,
          )
        ],
      ),
    );
  }
}
