import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_quest/app/core/enums.dart';
import 'package:quiz_quest/app/data/data_sources/quiz_data_source/quiz_categories_data_source.dart';
import 'package:quiz_quest/app/data/data_sources/user_data_source/user_data_source.dart';
import 'package:quiz_quest/app/domain/models/films_model/films_quiz_model.dart';
import 'package:quiz_quest/app/domain/models/games_model/games_quiz_model.dart';
import 'package:quiz_quest/app/domain/models/geography_model/geography_quiz_model.dart';
import 'package:quiz_quest/app/domain/models/history_model/history_quiz_model.dart';
import 'package:quiz_quest/app/domain/models/music_model/music_quiz_model.dart';
import 'package:quiz_quest/app/domain/repositories/quiz_repository/quiz_repository.dart';
import 'package:quiz_quest/app/domain/repositories/user_repository/user_repository.dart';
import 'package:quiz_quest/app/features/quiz_pages/films_quiz_pages/cubit/films_cubit.dart';
import 'package:quiz_quest/app/features/quiz_pages/films_quiz_pages/easy_films_quiz_page/easy_lost_life_page.dart';
import 'package:quiz_quest/app/features/quiz_pages/films_quiz_pages/easy_films_quiz_page/resume_easy_question_quiz_page.dart';
import 'package:quiz_quest/app/features/quiz_pages/games_quiz_pages/cubit/games_cubit.dart';
import 'package:quiz_quest/app/features/quiz_pages/games_quiz_pages/easy_games_quiz_page/easy_games_lost_life_page.dart';
import 'package:quiz_quest/app/features/quiz_pages/geography_quiz_pages/cubit/geography_cubit.dart';
import 'package:quiz_quest/app/features/quiz_pages/geography_quiz_pages/easy_geography_quiz_page/easy_geography_lost_life_page.dart';
import 'package:quiz_quest/app/features/quiz_pages/history_quiz_pages/cubit/history_cubit.dart';
import 'package:quiz_quest/app/features/quiz_pages/history_quiz_pages/easy_history_quiz_page/easy_history_lost_life_page.dart';
import 'package:quiz_quest/app/features/quiz_pages/history_quiz_pages/easy_history_quiz_page/resume_easy_history_question_quiz_page.dart';
import 'package:quiz_quest/app/features/quiz_pages/music_quiz_pages/cubit/music_cubit.dart';
import 'package:quiz_quest/app/features/quiz_pages/music_quiz_pages/easy_music_quiz_page/easy_music_lost_life_page.dart';
import 'package:quiz_quest/app/features/quiz_pages/music_quiz_pages/easy_music_quiz_page/resume_easy_music_question_quiz_page.dart';
import 'package:quiz_quest/app/features/quiz_pages/music_quiz_pages/hard_music_quiz_page/hard_music_lost_life_page.dart';
import 'package:quiz_quest/app/features/quiz_pages/music_quiz_pages/hard_music_quiz_page/resume_hard_music_question_quiz_page.dart';
import 'package:quiz_quest/app/features/quiz_pages/music_quiz_pages/medium_music_quiz_page/medium_music_lost_life_page.dart';
import 'package:quiz_quest/app/features/quiz_pages/music_quiz_pages/medium_music_quiz_page/resume_medium_music_question_quiz_page.dart';
import 'package:quiz_quest/app/features/quiz_pages/quiz_countdown_timer/quiz_countdown_timer.dart';
import 'package:quiz_quest/app/injection_container.dart';
class HardMusicQuestionWidget extends StatelessWidget {
  const HardMusicQuestionWidget({
    required this.question,
    super.key,
  });

  final String question;

  @override
  Widget build(BuildContext context) {
    final modifiedQuestion = question
        .replaceAll('&quot;', '')
        .replaceAll('&#039;', '')
        .replaceAll('&aacute;', '')
        .replaceAll('&ntilde;', '')
        .replaceAll('&amp;', '')
        .replaceAll('&rsquo;', '');

    return Center(
      child: Text(
        modifiedQuestion,
        style: GoogleFonts.aBeeZee(
            fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}
