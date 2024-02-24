import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_quest/app/core/enums.dart';
import 'package:quiz_quest/app/data/data_sources/user_data_source/user_data_source.dart';
import 'package:quiz_quest/app/domain/repositories/user_repository/user_repository.dart';
import 'package:quiz_quest/app/features/home_page/cubit/home_cubit.dart';
import 'package:quiz_quest/app/features/home_page/home_page.dart';
import 'package:quiz_quest/app/features/home_page/information_widget/information_widget.dart';
import 'package:quiz_quest/app/features/home_page/list_of_categories/list_of_categories.dart';
import 'package:quiz_quest/app/features/home_page/quiz_category_widget/quiz_category_widget.dart';
import 'package:quiz_quest/app/features/home_page/ranking_button/ranking_button.dart';
import 'package:quiz_quest/app/features/login_page/first_page_after_registration.dart';
import 'package:quiz_quest/app/features/quiz_pages/films_quiz_pages/cubit/films_cubit.dart';
import 'package:quiz_quest/app/features/quiz_pages/films_quiz_pages/first_quiz_page_films.dart';
import 'package:quiz_quest/app/features/quiz_pages/films_quiz_pages/easy_films_quiz_page/second_easy_quiz_page_films.dart';
import 'package:quiz_quest/app/features/quiz_pages/games_quiz_pages/first_quiz_page_games.dart';
import 'package:quiz_quest/app/features/quiz_pages/general_quiz_pages/first_quiz_page_general.dart';
import 'package:quiz_quest/app/features/quiz_pages/geography_quiz_pages/first_quiz_page_geography.dart';
import 'package:quiz_quest/app/features/quiz_pages/history_quiz_pages/first_quiz_page_history.dart';
import 'package:quiz_quest/app/features/quiz_pages/music_quiz_pages/first_quiz_page_music.dart';
import 'package:quiz_quest/app/features/quiz_pages/nature_quiz_pages/first_quiz_page_nature.dart';
import 'package:quiz_quest/app/features/quiz_pages/sports_quiz_pages/first_quiz_page_sport.dart';
import 'package:quiz_quest/app/features/quiz_pages/tv_quiz_pages/first_quiz_page_tv.dart';
import 'package:quiz_quest/app/features/user_page/cubit/user_cubit.dart';
import 'package:quiz_quest/app/features/user_page/user_account.dart';
import 'package:quiz_quest/app/injection_container.dart';
import 'package:share_plus/share_plus.dart';
import 'package:super_tooltip/super_tooltip.dart';

class QuizzWidget extends StatefulWidget {
  const QuizzWidget({
    this.user,
    this.userName,
    super.key,
  });

  final User? user;
  final String? userName;

  @override
  State<QuizzWidget> createState() => _QuizzWidgetState();
}

class _QuizzWidgetState extends State<QuizzWidget> {
  final controller = TextEditingController();
  late List<dynamic> categoryList;
  final toolController = SuperTooltipController();

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
      create: (context) => getIt<HomeCubit>()..getPointsData(),
      child: BlocListener<UserCubit, UserState>(
        listener: (context, state) {
          if (state.isSaved) {
            context.read<UserCubit>().start();
          }
        },
        child: BlocBuilder<HomeCubit, HomeState>(
          builder: (context, state) {
            final allPoints = state.totalPoints;

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
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            'Hello ${widget.userName} 👋',
                            style: GoogleFonts.aBeeZee(
                                fontSize: 24,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        InformationWidget(toolController: toolController),
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
                        RankingButton(user: widget.user)
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
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Total Points: $allPoints💎',
                            style: GoogleFonts.aBeeZee(
                                fontSize: 26,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                          IconButton(
                              onPressed: () {
                                String message =
                                    'In QuizQuest you scored Total Points: $allPoints💎! Congratulations!';
                                Share.share(message);
                              },
                              icon: const Icon(
                                Icons.share,
                                color: Colors.white54,
                              ))
                        ],
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
                          name: categoryList[index]['name'],
                          image: categoryList[index]['image'],
                          easyCategory:
                              state.categoryPoints[categoryList[index]['id']]
                                      ['easy'] ??
                                  0,
                          mediumCategory:
                              state.categoryPoints[categoryList[index]['id']]
                                      ['medium'] ??
                                  0,
                          hardCategory:
                              state.categoryPoints[categoryList[index]['id']]
                                      ['hard'] ??
                                  0,
                          categoryPoints:
                              state.categoryPoints[categoryList[index]['id']]
                                      ['total'] ??
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
          },
        ),
      ),
    );
  }
}
