import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_quest/app/data/data_sources/user_data_source/user_data_source.dart';
import 'package:quiz_quest/app/domain/repositories/user_repository/user_repository.dart';
import 'package:quiz_quest/app/features/home_page/cubit/home_cubit.dart';
import 'package:quiz_quest/app/features/quiz_pages/films_quiz_pages/first_quiz_page_films.dart';
import 'package:quiz_quest/app/features/quiz_pages/films_quiz_pages/second_easy_quiz_page_films.dart';
import 'package:quiz_quest/app/features/quiz_pages/games_quiz_pages/first_quiz_page_games.dart';
import 'package:quiz_quest/app/features/quiz_pages/geography_quiz_pages/first_quiz_page_geography.dart';
import 'package:quiz_quest/app/features/quiz_pages/history_quiz_pages/first_quiz_page_history.dart';
import 'package:quiz_quest/app/features/quiz_pages/music_quiz_pages/first_quiz_page_music.dart';
import 'package:quiz_quest/app/features/quiz_pages/nature_quiz_pages/first_quiz_page_nature.dart';
import 'package:quiz_quest/app/features/quiz_pages/sports_quiz_pages/first_quiz_page_sport.dart';
import 'package:quiz_quest/app/features/quiz_pages/tv_quiz_pages/first_quiz_page_tv.dart';
import 'package:quiz_quest/app/features/user_page/user_account.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    required this.user,
    super.key,
  });

  final User user;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            return QuizzPage(
              user: widget.user,
            );
          }
          return UserAccount(
            user: widget.user,
          );
        }),
      ),
    );
  }
}

class QuizzPage extends StatefulWidget {
  const QuizzPage({
    this.user,
    super.key,
  });

  final User? user;

  @override
  State<QuizzPage> createState() => _QuizzPageState();
}

class _QuizzPageState extends State<QuizzPage> {
  List<dynamic> list = [
    {
      'id': 1,
      'name': 'Films',
      'image': 'images/movie.png',
      'total_category': 'total_films_points',
      'easy_category': 'films_easy_points',
      'medium_category': 'films_medium_points',
      'hard_category': 'films_hard_points',
      'page': const FirstQuizPageFilms(
        image: 'images/movie.png',
      )
    },
    {
      'id': 2,
      'name': 'Games',
      'image': 'images/games.png',
      'total_category': 'total_games_points',
      'easy_category': 'games_easy_points',
      'medium_category': 'games_medium_points',
      'hard_category': 'games_hard_points',
      'page': const FirstQuizPageGames(
        image: 'images/games.png',
        easyCategory: 'games_easy_points',
        mediumCategory: 'games_medium_points',
        hardCategory: 'games_hard_points',
      )
    },
    {
      'id': 3,
      'name': 'Geography',
      'image': 'images/geography.png',
      'total_category': 'total_geography_points',
      'easy_category': 'geography_easy_points',
      'medium_category': 'geography_medium_points',
      'hard_category': 'geography_hard_points',
      'page': const FirstQuizPageGeography(
        image: 'images/geography.png',
        easyCategory: 'geography_easy_points',
        mediumCategory: 'geography_medium_points',
        hardCategory: 'geography_hard_points',
      )
    },
    {
      'id': 4,
      'name': 'History',
      'image': 'images/history.png',
      'total_category': 'total_history_points',
      'easy_category': 'history_easy_points',
      'medium_category': 'history_medium_points',
      'hard_category': 'history_hard_points',
      'page': const FirstQuizPageHistory(
        image: 'images/history.png',
        easyCategory: 'history_easy_points',
        mediumCategory: 'history_medium_points',
        hardCategory: 'history_hard_points',
      )
    },
    {
      'id': 5,
      'name': 'Music',
      'image': 'images/music.png',
      'total_category': 'total_music_points',
      'easy_category': 'music_easy_points',
      'medium_category': 'music_medium_points',
      'hard_category': 'music_hard_points',
      'page': const FirstQuizPageMusic(
        image: 'images/music.png',
        easyCategory: 'music_easy_points',
        mediumCategory: 'music_medium_points',
        hardCategory: 'music_hard_points',
      )
    },
    {
      'id': 6,
      'name': 'Nature',
      'image': 'images/nature.png',
      'total_category': 'total_nature_points',
      'easy_category': 'nature_easy_points',
      'medium_category': 'nature_medium_points',
      'hard_category': 'nature_hard_points',
      'page': const FirstQuizPageNature(
        image: 'images/nature.png',
        easyCategory: 'nature_easy_points',
        mediumCategory: 'nature_medium_points',
        hardCategory: 'nature_hard_points',
      )
    },
    {
      'id': 7,
      'name': 'Sport',
      'image': 'images/ball.png',
      'total_category': 'total_sports_points',
      'easy_category': 'sport_easy_points',
      'medium_category': 'sport_medium_points',
      'hard_category': 'sport_hard_points',
      'page': const FirstQuizPageSport(
        image: 'images/nature.png',
        easyCategory: 'sport_easy_points',
        mediumCategory: 'sport_medium_points',
        hardCategory: 'sport_hard_points',
      )
    },
    {
      'id': 8,
      'name': 'TV',
      'image': 'images/tv.png',
      'total_category': 'total_tv_points',
      'easy_category': 'tv_easy_points',
      'medium_category': 'tv_medium_points',
      'hard_category': 'tv_hard_points',
      'page': const FirstQuizPageTV(
        image: 'images/tv.png',
        easyCategory: 'tv_easy_points',
        mediumCategory: 'tv_medium_points',
        hardCategory: 'tv_hard_points',
      )
    },
  ];

  final controller = TextEditingController();
  late List<dynamic> categoryList;

  @override
  void initState() {
    categoryList = list;
    super.initState();
  }

  void filter(String categoryWord) {
    setState(() {
      categoryList = list
          .where((category) => category['name']
              .toLowerCase()
              .contains(categoryWord.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          HomeCubit(UserRepository(UserDataSource()))..getPointsData(),
      child: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          // return StreamBuilder<DocumentSnapshot>(
          //     stream: FirebaseFirestore.instance
          //         .collection('users')
          //         .doc(widget.user!.uid)
          //         .collection('points')
          //         .doc(widget.user!.uid)
          //         .snapshots(),
          //     builder: (context, snapshot) {
          //       if (snapshot.hasError) {
          //         return Text('Error: ${snapshot.error}');
          //       }

          // final points = snapshot.data;
          // final allPoints = points?['total_points'] ?? 0;

          final allPoints = state.pointsModel?.totalPoints;
        

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
                        'Hi user 👋',
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
                      'Total Points: $allPoints💎',
                      style: GoogleFonts.aBeeZee(
                          fontSize: 26,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Container(
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
                    child: TextField(
                      onChanged: (value) => filter(value),
                      controller: controller,
                      style: GoogleFonts.aBeeZee(
                          fontSize: 16, color: Colors.white),
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.white54,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        contentPadding: const EdgeInsets.all(10),
                        hintText: 'Search category',
                        hintStyle: GoogleFonts.aBeeZee(
                            fontSize: 16,
                            color: Colors.white54,
                            fontWeight: FontWeight.bold),
                        suffixIcon: const Icon(
                          Icons.search,
                          color: Colors.white54,
                        ),
                        hintMaxLines: 1,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                    ),
                    itemCount: categoryList.length,
                    shrinkWrap: true,
                    physics: const ClampingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return QuizzCategoryWidget(
                        name: state.list[index]['name'],
                        image: state.list[index]['image'],
                        category: state.list[index]['total_category'],
                        easyCategory: 'easy',
                        mediumCategory: 'medium',
                        hardCategory: 'hard',
                        categoryPoints: state
                                .pointsModel
                                ?.categoryPoints[
                                    state.list[index]['name'].toLowerCase()]
                                ?.values
                                .reduce((a, b) => a + b) ??
                            0,
                        nextPage: state.list[index]['page'],
                      );
                    },
                  ),
                ),
                const SizedBox(height: 30),
              ],
            ),
          );
          // });
        },
      ),
    );
  }
}

class QuizzCategoryWidget extends StatelessWidget {
  const QuizzCategoryWidget({
    required this.easyCategory,
    required this.mediumCategory,
    required this.hardCategory,
    required this.name,
    required this.image,
    required this.category,
    required this.categoryPoints,
    required this.nextPage,
    super.key,
  });

  final String name;
  final String image;
  final String category;
  final dynamic easyCategory;
  final dynamic mediumCategory;
  final dynamic hardCategory;
  final int categoryPoints;
  final Widget nextPage;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => nextPage,
            settings: RouteSettings(
              arguments: [
                easyCategory,
                mediumCategory,
                hardCategory,
              ],
            )));
      },
      child: DetailsQuizzWidget(
        categoryPoints: categoryPoints,
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
    required this.categoryPoints,
    super.key,
  });

  final String name;
  final String image;
  final int categoryPoints;

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
          Expanded(
            child: Text(
              'Points: $categoryPoints💎',
              style: GoogleFonts.aBeeZee(
                  fontSize: 18,
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
