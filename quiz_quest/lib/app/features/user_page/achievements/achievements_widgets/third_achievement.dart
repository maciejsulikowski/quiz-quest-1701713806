import 'package:flutter/material.dart';
import 'package:quiz_quest/app/features/user_page/achievements/achievements_widgets/image_and_text_achievement_widgets.dart';

// ignore: must_be_immutable
class ThirdAchievement extends StatefulWidget {
  ThirdAchievement({
    required this.totalPoints,
    super.key,
  });

  int totalPoints;

  @override
  State<ThirdAchievement> createState() => _ThirdAchievementState();
}

class _ThirdAchievementState extends State<ThirdAchievement> {
  Color thirdColor = Colors.green;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 10.0),
          child: AchievementImageWidget(
            image: 'images/3-removebg-preview.png',
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        const Expanded(
            child: AchievementTextWidget(text: 'You scored 1000 points!')),
        const SizedBox(
          width: 5,
        ),
        Container(
            height: 20,
            width: 20,
            color: widget.totalPoints >= 1000
                ? thirdColor = Colors.green
                : thirdColor = Colors.white,
            margin: const EdgeInsets.only(right: 10),
            child: Center(child: Text(thirdColor == Colors.green ? '✔' : ''))),
      ],
    );
  }
}
