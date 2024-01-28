import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_quest/app/features/quiz_pages/films_quiz_pages/first_quiz_page_films.dart';
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
  List list = [
    {
      'id': 1,
      'widget': const QuizzCategoryWidget(
        name: 'Films',
        image: 'images/movie.png',
      ),
      'name': 'Films',
      'image': 'images/movie.png'
    },
    {
      'id': 2,
      'widget': const QuizzCategoryWidget3(
        name: 'Games',
        image: 'images/games.png',
      ),
      'name': 'Games',
      'image': 'images/games.png'
    },
    {
      'id': 3,
      'widget': const QuizzCategoryWidget4(
        name: 'Geography',
        image: 'images/geography.png',
      ),
      'name': 'Geography',
      'image': 'images/geography.png'
    },
    {
      'id': 4,
      'widget': const QuizzCategoryWidget5(
        name: 'History',
        image: 'images/history.png',
      ),
      'name': 'History',
      'image': 'images/history.png'
    },
    {
      'id': 5,
      'widget': const QuizzCategoryWidget6(
        name: 'Music',
        image: 'images/music.png',
      ),
      'name': 'Music',
      'image': 'images/music.png'
    },
    {
      'id': 6,
      'widget': const QuizzCategoryWidget7(
        name: 'Nature',
        image: 'images/nature.png',
      ),
      'name': 'Nature',
      'image': 'images/nature.png'
    },
    {
      'id': 7,
      'widget': const QuizzCategoryWidget2(
        name: 'Sport',
        image: 'images/ball.png',
      ),
      'name': 'Sport',
      'image': 'images/ball.png'
    },
    {
      'id': 8,
      'widget': const QuizzCategoryWidget8(
        name: 'TV',
        image: 'images/tv.png',
      ),
      'name': 'TV',
      'image': 'images/tv.png'
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
                style: GoogleFonts.aBeeZee(fontSize: 16, color: Colors.white),
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
                final firstIndex = index * 2;
                final secondIndex = firstIndex + 1;
                // if (firstIndex != null && secondIndex != null)
                // ignore: curly_braces_in_flow_control_structures
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    if (firstIndex < categoryList.length)
                      Column(
                        children: [
                          categoryList[firstIndex]['widget'],
                          const SizedBox(
                            height: 30,
                          ),
                        ],
                      ),
                    if (secondIndex < categoryList.length)
                      Column(
                        children: [
                          categoryList[secondIndex]['widget'],
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
  }
}

class QuizzCategoryWidget extends StatelessWidget {
  const QuizzCategoryWidget({
    required this.name,
    required this.image,
    super.key,
  });

  final String name;
  final String image;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => FirstQuizPageFilms(
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
    super.key,
  });

  final String name;
  final String image;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => FirstQuizPageSport(
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
    super.key,
  });

  final String name;
  final String image;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => FirstQuizPageGames(
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
    super.key,
  });

  final String name;
  final String image;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => FirstQuizPageGeography(
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
    super.key,
  });

  final String name;
  final String image;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => FirstQuizPageHistory(
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
    super.key,
  });

  final String name;
  final String image;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => FirstQuizPageMusic(
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
    super.key,
  });

  final String name;
  final String image;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => FirstQuizPageNature(
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
    super.key,
  });

  final String name;
  final String image;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => FirstQuizPageTV(
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
