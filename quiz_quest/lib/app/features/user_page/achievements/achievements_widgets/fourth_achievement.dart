import 'package:flutter/material.dart';
import 'package:quiz_quest/app/features/user_page/achievements/achievements_widgets/image_and_text_achievement_widgets.dart';

// ignore: must_be_immutable
class FourthAchievement extends StatefulWidget {
  FourthAchievement({
    required this.totalPoints,
    super.key,
  });

  int totalPoints;

  @override
  State<FourthAchievement> createState() => _FourthAchievementState();
}

class _FourthAchievementState extends State<FourthAchievement> {
  Color fourthColor = Colors.green;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 10.0),
          child: AchievementImageWidget(
            image: 'images/4-removebg-preview.png',
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        const Expanded(
            child: AchievementTextWidget(text: 'You scored 2000 points!')),
        const SizedBox(
          width: 5,
        ),
        Container(
            height: 20,
            width: 20,
            color: widget.totalPoints >= 2000
                ? fourthColor = Colors.green
                : fourthColor = Colors.white,
            margin: const EdgeInsets.only(right: 10),
            child: Center(child: Text(fourthColor == Colors.green ? '✔' : ''))),
      ],
    );
  }
}
