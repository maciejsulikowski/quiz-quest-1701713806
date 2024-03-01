import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_quest/app/features/home_page/cubit/home_cubit.dart';
import 'package:quiz_quest/app/features/user_page/achievements/achievements_widgets/achievement_container.dart';
import 'package:quiz_quest/app/features/user_page/achievements/achievements_widgets/fifth_achievement.dart';
import 'package:quiz_quest/app/features/user_page/achievements/achievements_widgets/first_achievement.dart';
import 'package:quiz_quest/app/features/user_page/achievements/achievements_widgets/fourth_achievement.dart';
import 'package:quiz_quest/app/features/user_page/achievements/achievements_widgets/second_achievement.dart';
import 'package:quiz_quest/app/features/user_page/achievements/achievements_widgets/sixth_achievement.dart';
import 'package:quiz_quest/app/features/user_page/achievements/achievements_widgets/third_achievement.dart';
import 'package:quiz_quest/app/features/user_page/achievements/cubit/achievements_cubit.dart';
import 'package:quiz_quest/app/injection_container.dart';

class AchievementsPage extends StatefulWidget {
  const AchievementsPage({
    super.key,
  });

  @override
  State<AchievementsPage> createState() => _AchievementsPageState();
}

class _AchievementsPageState extends State<AchievementsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: const AchievementsWidget(),
    );
  }
}

class AchievementsWidget extends StatefulWidget {
  const AchievementsWidget({
    super.key,
  });

  @override
  State<AchievementsWidget> createState() => _AchievementsWidgetState();
}

class _AchievementsWidgetState extends State<AchievementsWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<HomeCubit>()..getPointsData(),
      child: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          final allPoints = state.totalPoints;

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
                  height: 10,
                ),
                Center(
                  child: Text(
                    'Your Achievements',
                    style: GoogleFonts.aBeeZee(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                AchievementContainer(
                  achievementWidget: FirstAchievement(totalPoints: allPoints),
                ),
                const SizedBox(height: 10),
                AchievementContainer(
                  achievementWidget: SecondAchievement(
                    totalPoints: allPoints,
                  ),
                ),
                const SizedBox(height: 10),
                AchievementContainer(
                  achievementWidget: ThirdAchievement(
                    totalPoints: allPoints,
                  ),
                ),
                const SizedBox(height: 10),
                AchievementContainer(
                  achievementWidget: FourthAchievement(
                    totalPoints: allPoints,
                  ),
                ),
                const SizedBox(height: 10),
                AchievementContainer(
                  achievementWidget: FifthAchievement(
                    totalPoints: allPoints,
                  ),
                ),
                const SizedBox(height: 10),
                AchievementContainer(
                  achievementWidget: SixthAchievement(
                    totalPoints: allPoints,
                  ),
                ),
                const SizedBox(height: 10),
              ],
            ),
          );
        },
      ),
    );
  }
}
