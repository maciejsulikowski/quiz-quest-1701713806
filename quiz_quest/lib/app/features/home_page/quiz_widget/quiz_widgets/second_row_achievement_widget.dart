import 'package:flutter/material.dart';
import 'package:quiz_quest/app/features/home_page/quiz_widget/quiz_widgets/no_achievement_widget.dart';

class SecondRowAchievementWidget extends StatelessWidget {
  const SecondRowAchievementWidget({
    super.key,
    required this.totalPoints,
    required this.isFourthAchievementCompleted,
    required this.isFifthAchievementCompleted,
    required this.isSixthAchievementCompleted,
  });

  final int totalPoints;
  final bool isFourthAchievementCompleted;
  final bool isFifthAchievementCompleted;
  final bool isSixthAchievementCompleted;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        2000 <= totalPoints
            ? const CircleAvatar(
                backgroundColor: Colors.transparent,
                radius: 35,
                backgroundImage: AssetImage('images/4-removebg-preview.png'),
              )
            : const NoAchievementWidget(),
        const SizedBox(
          width: 10,
        ),
        5000 <= totalPoints
            ? const CircleAvatar(
                backgroundColor: Colors.transparent,
                radius: 35,
                backgroundImage: AssetImage('images/5-removebg-preview.png'),
              )
            : const NoAchievementWidget(),
        const SizedBox(
          width: 10,
        ),
        10000 <= totalPoints
            ? const CircleAvatar(
                backgroundColor: Colors.transparent,
                radius: 35,
                backgroundImage: AssetImage('images/6-removebg-preview.png'),
              )
            : const NoAchievementWidget(),
      ],
    );
  }
}
