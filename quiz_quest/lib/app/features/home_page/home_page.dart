import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_quest/app/data/data_sources/animals_category/animals_category_data_source.dart';
import 'package:quiz_quest/app/data/data_sources/sport_category/sport_category_data_source.dart';
import 'package:quiz_quest/app/domain/models/animals_quiz_model.dart';
import 'package:quiz_quest/app/domain/models/sports_quiz_model.dart';
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
                // if (animalsModel != null && sportsModel != null)
                //   CategoryQuizz(
                //     animalsModel: animalsModel,
                //     sportsModel: sportsModel,
                //   ),

                if (sportsModel != null && animalsModel != null) ...[
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const FirstQuizPage()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          DetailsQuizzWidget(
                            sportsModel: sportsModel,
                            results: sportsModel.results,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const FirstQuizPage()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          DetailsQuizzWidget2(
                            animalsModel: animalsModel,
                            results: animalsModel.results,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],

                // const SizedBox(height: 30),
                // CategoryQuizz(
                //   categoriesModel: categoriesModel,
                // ),
                // const SizedBox(height: 30),
                // CategoryQuizz(
                //   categoriesModel: categoriesModel,
                // ),
                // const SizedBox(height: 30),
              ],
            ),
          );
        },
      ),
    );
  }
}

// class CategoryQuizz extends StatelessWidget {
//   const CategoryQuizz({
//     required this.sportsModel,
//     required this.animalsModel,
//     super.key,
//   });

//   final SportsQuizModel sportsModel;
//   final AnimalsQuizModel animalsModel;

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () {
//         Navigator.of(context).push(
//             MaterialPageRoute(builder: (context) => const FirstQuizPage()));
//       },
//       child: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 16.0),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: [
//             DetailsQuizzWidget(
//               sportsModel: sportsModel,
//               animalsModel: animalsModel,
//               results: sportsModel.results,
//               results2: animalsModel.results,
//             ),
//             const SizedBox(
//               width: 10,
//             ),
//             DetailsQuizzWidget(
//               animalsModel: animalsModel,
//               sportsModel: sportsModel,
//               results: sportsModel.results,
//               results2: animalsModel.results,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

class DetailsQuizzWidget extends StatelessWidget {
  const DetailsQuizzWidget({
    required this.sportsModel,
    required this.results,
    super.key,
  });

  final SportsQuizModel sportsModel;
  final List<Results1> results;
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
      child: Row(
        children: [
          Text(
            results.first.category,
            style: GoogleFonts.aBeeZee(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            width: 5,
          ),
          const CircleAvatar()
        ],
      ),
    );
  }
}

class DetailsQuizzWidget2 extends StatelessWidget {
  const DetailsQuizzWidget2({
    required this.animalsModel,
    required this.results,
    super.key,
  });

  final AnimalsQuizModel animalsModel;
  final List<Results2> results;
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
      child: Row(
        children: [
          Text(
            results.first.category,
            style: GoogleFonts.aBeeZee(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            width: 5,
          ),
          const CircleAvatar()
        ],
      ),
    );
  }
}
