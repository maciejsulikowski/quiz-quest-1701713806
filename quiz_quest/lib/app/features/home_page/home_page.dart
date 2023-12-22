import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_quest/app/data/data_sources/animals_category/animals_category_data_source.dart';
import 'package:quiz_quest/app/data/data_sources/sport_category/sport_category_data_source.dart';
import 'package:quiz_quest/app/domain/models/animals_quiz_model.dart';
import 'package:quiz_quest/app/domain/repositories/category_repository.dart';
import 'package:quiz_quest/app/features/home_page/cubit/home_cubit.dart';
import 'package:quiz_quest/app/features/quiz_pages/first_quiz_page.dart';
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
      create: (context) => HomeCubit(
        CategoriesRepository(
          AnimalsCategoryDataSource(),
          SportCategoryDataSource(),
        ),
      )..getSportsModel('21'),
      child: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          final sportsModel = state.sportsModel;
          final animalsModel = state.animalsModel;

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
                        model: state.animalsModel,
                        name: 'Animals',
                        image: 'images/animal.png',
                      ),
                      // QuizzCategoryWidget(
                      //   model: animalsModel,
                      //   name: 'Art',
                      //   image: 'images/art.png',
                      // ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                // Padding(
                //   padding: const EdgeInsets.symmetric(horizontal: 20.0),
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceAround,
                //     children: [
                //       QuizzCategoryWidget(
                //         model: sportsModel,
                //         name: 'Computer Science',
                //         image: 'images/computer.png',
                //       ),
                //       QuizzCategoryWidget(
                //         model: sportsModel,
                //         name: 'Geography',
                //         image: 'images/geography.png',
                //       ),
                //     ],
                //   ),
                // ),
                const SizedBox(
                  height: 30,
                ),
                // Padding(
                //   padding: const EdgeInsets.symmetric(horizontal: 20.0),
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceAround,
                //     children: [
                //       QuizzCategoryWidget(
                //         model: sportsModel,
                //         name: 'History',
                //         image: 'images/history.png',
                //       ),
                //       QuizzCategoryWidget(
                //         model: sportsModel,
                //         name: 'Politics',
                //         image: 'images/politics.png',
                //       ),
                //     ],
                //   ),
                // ),
                // const SizedBox(
                //   height: 30,
                // ),
                // Padding(
                //   padding: const EdgeInsets.symmetric(horizontal: 20.0),
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceAround,
                //     children: [
                //       QuizzCategoryWidget(
                //         model: sportsModel,
                //         name: 'Sport',
                //         image: 'images/ball.png',
                //       ),
                //       QuizzCategoryWidget(
                //         model: sportsModel,
                //         name: 'Vehicles',
                //         image: 'images/vehicle.png',
                //       ),
                //     ],
                //   ),
                // ),
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
            builder: (context) => FirstQuizPage(
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
