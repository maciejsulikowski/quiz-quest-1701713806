import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
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
    required this.user,
    super.key,
  });

  final User? user;

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
      body: AchievementsWidget(
        user: widget.user!,
      ),
    );
  }
}

class AchievementsWidget extends StatefulWidget {
  const AchievementsWidget({
    required this.user,
    super.key,
  });

  final User? user;

  @override
  State<AchievementsWidget> createState() => _AchievementsWidgetState();
}

class _AchievementsWidgetState extends State<AchievementsWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AchievementsCubit>()..getAchievements(),
      child: BlocBuilder<AchievementsCubit, AchievementsState>(
        builder: (context, state) {
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
                if (state.achievementModel != null)
                  AchievementContainer(
                    achievementWidget: FirstAchievement(
                        firstAchievement:
                            state.achievementModel!.isFirstAchievementReady),
                  ),
                const SizedBox(height: 10),
                if (state.achievementModel != null)
                  AchievementContainer(
                    achievementWidget: SecondAchievement(
                      secondAchievement:
                          state.achievementModel!.isSecondAchievementReady,
                    ),
                  ),
                const SizedBox(height: 10),
                if (state.achievementModel != null)
                  AchievementContainer(
                    achievementWidget: ThirdAchievement(
                      thirdAchievement:
                          state.achievementModel!.isThirdAchievementReady,
                    ),
                  ),
                const SizedBox(height: 10),
                if (state.achievementModel != null)
                  AchievementContainer(
                    achievementWidget: FourthAchievement(
                      fourthAchievement:
                          state.achievementModel!.isFourthAchievementReady,
                    ),
                  ),
                const SizedBox(height: 10),
                if (state.achievementModel != null)
                  AchievementContainer(
                    achievementWidget: FifthAchievement(
                      fifthAchievement:
                          state.achievementModel!.isFifthAchievementReady,
                    ),
                  ),
                const SizedBox(height: 10),
                if (state.achievementModel != null)
                  AchievementContainer(
                    achievementWidget: SixthAchievement(
                      sixthAchievement:
                          state.achievementModel!.isSixthAchievementReady,
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
