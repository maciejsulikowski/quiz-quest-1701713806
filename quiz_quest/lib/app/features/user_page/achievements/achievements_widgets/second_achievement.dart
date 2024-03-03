import 'package:flutter/material.dart';
import 'package:quiz_quest/app/features/user_page/achievements/achievements_widgets/image_and_text_achievement_widgets.dart';

// ignore: must_be_immutable
class SecondAchievement extends StatefulWidget {
  SecondAchievement({
    required this.totalPoints,
    super.key,
  });

  int totalPoints;

  @override
  State<SecondAchievement> createState() => _SecondAchievementState();
}

class _SecondAchievementState extends State<SecondAchievement> {
  Color secondColor = Colors.green;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 10.0),
          child: AchievementImageWidget(
            image: 'images/2-removebg-preview.png',
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        const Expanded(
            child: AchievementTextWidget(text: 'You scored 500 points!')),
        const SizedBox(
          width: 5,
        ),
        Container(
            height: 20,
            width: 20,
            color: widget.totalPoints >= 500
                ? secondColor = Colors.green
                : secondColor = Colors.white,
            margin: const EdgeInsets.only(right: 10),
            child: Center(child: Text(secondColor == Colors.green ? '✔' : '')))
      ],
    );
  }
}
