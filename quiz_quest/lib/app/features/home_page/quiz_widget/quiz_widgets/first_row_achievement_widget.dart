import 'package:flutter/material.dart';
import 'package:quiz_quest/app/features/home_page/quiz_widget/quiz_widgets/no_achievement_widget.dart';
class FirstRowAchievementsWidget extends StatelessWidget {
  const FirstRowAchievementsWidget({
    super.key,
    required this.isFirstAchievementCompleted,
    required this.isSecondAchievementCompleted,
    required this.isThirdAchievementCompleted,
  });

  final bool isFirstAchievementCompleted;
  final bool isSecondAchievementCompleted;
  final bool isThirdAchievementCompleted;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        isFirstAchievementCompleted
            ? const CircleAvatar(
                backgroundColor: Colors.transparent,
                radius: 35,
                backgroundImage: AssetImage('images/1-removebg-preview.png'),
              )
            : const NoAchievementWidget(),
        const SizedBox(
          width: 10,
        ),
        isSecondAchievementCompleted
            ? const CircleAvatar(
                backgroundColor: Colors.transparent,
                radius: 35,
                backgroundImage: AssetImage('images/2-removebg-preview.png'),
              )
            : const NoAchievementWidget(),
        const SizedBox(
          width: 10,
        ),
        isThirdAchievementCompleted
            ? const CircleAvatar(
                backgroundColor: Colors.transparent,
                radius: 35,
                backgroundImage: AssetImage('images/3-removebg-preview.png'),
              )
            : const NoAchievementWidget(),
      ],
    );
  }
}
