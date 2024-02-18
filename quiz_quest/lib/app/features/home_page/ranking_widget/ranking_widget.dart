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

class RankingWidget extends StatefulWidget {
  const RankingWidget({
    super.key,
  });

  @override
  State<RankingWidget> createState() => RankingWidgetState();
}

class RankingWidgetState extends State<RankingWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<HomeCubit>()..getPointsData(),
      child: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          return Scaffold(
            extendBodyBehindAppBar: true,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              iconTheme: const IconThemeData(color: Colors.white),
            ),
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
                  Center(
                    child: Text(
                      'Total Ranking',
                      style: GoogleFonts.aBeeZee(
                          fontSize: 24,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(height: 30),
                  const UserRecord(
                    id: '1',
                    user: 'Maciek',
                    points: 200,
                  ),
                  UserRecord(
                    id: '2',
                    user: 'Michał',
                    points: state.totalPoints,
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class UserRecord extends StatelessWidget {
  const UserRecord({
    required this.id,
    required this.user,
    required this.points,
    super.key,
  });

  final String id;
  final String user;
  final int points;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          TextRanking(
            text: id,
          ),
          TextRanking(
            text: user,
          ),
          TextRanking(
            text: 'Points: $points💎',
          ),
        ],
      ),
    );
  }
}

class TextRanking extends StatelessWidget {
  const TextRanking({
    required this.text,
    super.key,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.aBeeZee(
          fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
    );
  }
}
