import 'package:flutter/material.dart';
import 'package:quiz_quest/app/features/user_page/achievements/achievements_widgets/image_and_text_achievement_widgets.dart';


// ignore: must_be_immutable
class FirstAchievement extends StatefulWidget {
  FirstAchievement({
    required this.firstAchievement,
    super.key,
  });

  bool firstAchievement;

  @override
  State<FirstAchievement> createState() => _FirstAchievementState();
}

class _FirstAchievementState extends State<FirstAchievement> {
  Color firstColor = Colors.green;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 10.0),
          child: AchievementImageWidget(
            image: 'images/1-removebg-preview.png',
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        const Expanded(
            child: AchievementTextWidget(
                text: 'You scored your first 100 points!')),
        const SizedBox(
          width: 5,
        ),
        Container(
            height: 20,
            width: 20,
            color: widget.firstAchievement == false
                ? firstColor = Colors.white
                : firstColor = Colors.green,
            margin: const EdgeInsets.only(right: 10),
            child: Center(child: Text(firstColor == Colors.green ? '✔' : '')))
      ],
    );
  }
}
