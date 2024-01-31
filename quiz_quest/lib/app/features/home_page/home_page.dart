import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
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
    this.user,
    super.key,
  });

  final User? user;

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
  QuizzPage({
    this.user,
    super.key,
  });

  final User? user;

  @override
  State<QuizzPage> createState() => _QuizzPageState();
}

class _QuizzPageState extends State<QuizzPage> {
  int points = 0;

  List list = [
    {
      'id': 1,
      'name': 'Films',
      'image': 'images/movie.png',
      'category': 'films_easy_points',
      'categoryPoints': 0,
      'page': const FirstQuizPageFilms(
        image: 'images/movie.png',
      )
    },
    {
      'id': 2,
      'name': 'Games',
      'image': 'images/games.png',
      'category': 'games_easy_points',
      'categoryPoints': 0,
      'page': const FirstQuizPageGames(
        image: 'images/games.png',
      )
    },
    {
      'id': 3,
      'name': 'Geography',
      'image': 'images/geography.png',
      'category': 'geography_easy_points',
      'categoryPoints': 0,
      'page': const FirstQuizPageGeography(
        image: 'images/geography.png',
      )
    },
    {
      'id': 4,
      'name': 'History',
      'image': 'images/history.png',
      'category': 'history_easy_points',
      'categoryPoints': 0,
      'page': const FirstQuizPageHistory(
        image: 'images/history.png',
      )
    },
    {
      'id': 5,
      'name': 'Music',
      'image': 'images/music.png',
      'category': 'music_easy_points',
      'categoryPoints': 0,
      'page': const FirstQuizPageMusic(
        image: 'images/music.png',
      )
    },
    {
      'id': 6,
      'name': 'Nature',
      'image': 'images/nature.png',
      'category': 'nature_easy_points',
      'categoryPoints': 0,
      'page': const FirstQuizPageNature(
        image: 'images/nature.png',
      )
    },
    {
      'id': 7,
      'name': 'Sport',
      'image': 'images/ball.png',
      'category': 'sport_easy_points',
      'categoryPoints': 0,
      'page': const FirstQuizPageSport(
        image: 'images/nature.png',
      )
    },
    {
      'id': 8,
      'name': 'TV',
      'image': 'images/tv.png',
      'category': 'tv_easy_points',
      'categoryPoints': 0,
      'page': const FirstQuizPageTV(
        image: 'images/tv.png',
      )
    },
  ];

  final controller = TextEditingController();
  List categoryList = [];

  @override
  void initState() {
    categoryList = list;
    super.initState();
  }

  void filter(String categoryWord) {
    List results = [];

    if (categoryWord.isNotEmpty) {
      results = list
          .where((category) => category['name']
              .toLowerCase()
              .contains(categoryWord.toLowerCase()))
          .toList();
    } else {
      results = list;
    }

    setState(() {
      categoryList = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<DocumentSnapshot>(
        stream: FirebaseFirestore.instance
            .collection('users')
            .doc(widget.user?.uid)
            .collection('points')
            .doc(widget.user?.uid)
            .snapshots(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator();
          }
          if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          }

          final points = snapshot.data;
          final allPoints = points?['total_points'] ?? '0';

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
                      'Points: $allPoints💎',
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
                  child: ListView.builder(
                    itemCount: categoryList.length,
                    shrinkWrap: true,
                    physics: const ClampingScrollPhysics(),
                    itemBuilder: (context, index) {
                      var categoryPoints =
                          points?[list[index]['category']] ?? 0;

                      final firstIndex = index * 2;
                      final secondIndex = firstIndex + 1;
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          if (firstIndex < categoryList.length)
                            Column(
                              children: [
                                QuizzCategoryWidget(
                                  name: list[firstIndex]['name'],
                                  image: list[firstIndex]['image'],
                                  category: list[firstIndex]['category'],
                                  categoryPoints: categoryPoints,
                                  nextPage: list[firstIndex]['page'],
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                              ],
                            ),
                          if (secondIndex < categoryList.length)
                            Column(
                              children: [
                                QuizzCategoryWidget(
                                  name: list[secondIndex]['name'],
                                  image: list[secondIndex]['image'],
                                  category: list[secondIndex]['category'],
                                  categoryPoints: categoryPoints,
                                  nextPage: list[secondIndex]['page'],
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                              ],
                            ),
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        });
  }
}

class QuizzCategoryWidget extends StatelessWidget {
  const QuizzCategoryWidget({
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
  final int categoryPoints;
  final Widget nextPage;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => nextPage));
      },
      child: DetailsQuizzWidget(
        categoryPoints: categoryPoints,
        category: category,
        name: name,
        image: image,
      ),
    );
  }
}

// class QuizzCategoryWidget2 extends StatelessWidget {
//   const QuizzCategoryWidget2({
//     required this.name,
//     required this.image,
//     required this.category,
//     required this.categoryPoints,
//     super.key,
//   });

//   final String name;
//   final String image;
//   final String category;
//   final int categoryPoints;
//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () {
//         Navigator.of(context).push(MaterialPageRoute(
//             builder: (context) => FirstQuizPageSport(
//                   image: image,
//                 )));
//       },
//       child: DetailsQuizzWidget(
//         category: category,
//         categoryPoints: categoryPoints,
//         name: name,
//         image: image,
//       ),
//     );
//   }
// }

// class QuizzCategoryWidget3 extends StatelessWidget {
//   const QuizzCategoryWidget3({
//     required this.categoryPoints,
//     required this.name,
//     required this.image,
//     super.key,
//   });

//   final String name;
//   final String image;
//   final String categoryPoints;
//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () {
//         Navigator.of(context).push(MaterialPageRoute(
//             builder: (context) => FirstQuizPageGames(
//                   image: image,
//                 )));
//       },
//       child: DetailsQuizzWidget(
//         categoryPoints: categoryPoints.toString(),
//         name: name,
//         image: image,
//       ),
//     );
//   }
// }

// class QuizzCategoryWidget4 extends StatelessWidget {
//   const QuizzCategoryWidget4({
//     required this.name,
//     required this.image,
//     required this.categoryPoints,
//     super.key,
//   });

//   final String name;
//   final String image;
//   final String categoryPoints;
//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () {
//         Navigator.of(context).push(MaterialPageRoute(
//             builder: (context) => FirstQuizPageGeography(
//                   image: image,
//                 )));
//       },
//       child: DetailsQuizzWidget(
//         categoryPoints: categoryPoints.toString(),
//         name: name,
//         image: image,
//       ),
//     );
//   }
// }

// class QuizzCategoryWidget5 extends StatelessWidget {
//   const QuizzCategoryWidget5({
//     required this.name,
//     required this.image,
//     required this.categoryPoints,
//     super.key,
//   });

//   final String name;
//   final String image;
//   final String categoryPoints;
//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () {
//         Navigator.of(context).push(MaterialPageRoute(
//             builder: (context) => FirstQuizPageHistory(
//                   image: image,
//                 )));
//       },
//       child: DetailsQuizzWidget(
//         name: name,
//         categoryPoints: categoryPoints.toString(),
//         image: image,
//       ),
//     );
//   }
// }

// class QuizzCategoryWidget6 extends StatelessWidget {
//   const QuizzCategoryWidget6({
//     required this.name,
//     required this.image,
//     required this.categoryPoints,
//     super.key,
//   });

//   final String name;
//   final String image;
//   final String categoryPoints;
//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () {
//         Navigator.of(context).push(MaterialPageRoute(
//             builder: (context) => FirstQuizPageMusic(
//                   image: image,
//                 )));
//       },
//       child: DetailsQuizzWidget(
//         categoryPoints: categoryPoints.toString(),
//         name: name,
//         image: image,
//       ),
//     );
//   }
// }

// class QuizzCategoryWidget7 extends StatelessWidget {
//   const QuizzCategoryWidget7({
//     required this.name,
//     required this.image,
//     required this.categoryPoints,
//     super.key,
//   });

//   final String name;
//   final String image;
//   final String categoryPoints;
//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () {
//         Navigator.of(context).push(MaterialPageRoute(
//             builder: (context) => FirstQuizPageNature(
//                   image: image,
//                 )));
//       },
//       child: DetailsQuizzWidget(
//         categoryPoints: categoryPoints.toString(),
//         name: name,
//         image: image,
//       ),
//     );
//   }
// }

// class QuizzCategoryWidget8 extends StatelessWidget {
//   const QuizzCategoryWidget8({
//     required this.name,
//     required this.image,
//     required this.categoryPoints,
//     super.key,
//   });

//   final String name;
//   final String image;
//   final String categoryPoints;

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () {
//         Navigator.of(context).push(MaterialPageRoute(
//             builder: (context) => FirstQuizPageTV(
//                   image: image,
//                 )));
//       },
//       child: DetailsQuizzWidget(
//         categoryPoints: categoryPoints.toString(),
//         name: name,
//         image: image,
//       ),
//     );
//   }
// }

class DetailsQuizzWidget extends StatelessWidget {
  const DetailsQuizzWidget({
    required this.name,
    required this.image,
    required this.category,
    required this.categoryPoints,
    super.key,
  });

  final String name;
  final String image;
  final String category;
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
              categoryPoints.toString(),
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
