import 'package:flutter/material.dart';
import 'package:quiz_quest/app/features/user_page/achievements/achievements_widgets/image_and_text_achievement_widgets.dart';

// ignore: must_be_immutable
class FifthAchievement extends StatefulWidget {
  FifthAchievement({
    required this.totalPoints,
    super.key,
  });

  int totalPoints;

  @override
  State<FifthAchievement> createState() => _FifthAchievementState();
}

class _FifthAchievementState extends State<FifthAchievement> {
  Color fifthColor = Colors.green;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 10.0),
          child: AchievementImageWidget(
            image: 'images/5-removebg-preview.png',
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        const Expanded(
            child: AchievementTextWidget(text: 'You scored 5000 points!')),
        const SizedBox(
          width: 5,
        ),
        Container(
            height: 20,
            width: 20,
            color: widget.totalPoints >= 5000
                ? fifthColor = Colors.green
                : fifthColor = Colors.white,
            margin: const EdgeInsets.only(right: 10),
            child: Center(child: Text(fifthColor == Colors.green ? '✔' : ''))),
      ],
    );
  }
}
