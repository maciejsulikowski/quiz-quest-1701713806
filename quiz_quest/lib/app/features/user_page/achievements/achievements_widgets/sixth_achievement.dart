import 'package:flutter/material.dart';
import 'package:quiz_quest/app/features/user_page/achievements/achievements_widgets/image_and_text_achievement_widgets.dart';



// ignore: must_be_immutable
class SixthAchievement extends StatefulWidget {
  SixthAchievement({
    required this.sixthAchievement,
    super.key,
  });
  bool sixthAchievement;

  @override
  State<SixthAchievement> createState() => _SixthAchievementState();
}

class _SixthAchievementState extends State<SixthAchievement> {
  Color sixthColor = Colors.green;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 10.0),
          child: AchievementImageWidget(
            image: 'images/6-removebg-preview.png',
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        const Expanded(
            child: AchievementTextWidget(text: 'You scored 10000 points!')),
        const SizedBox(
          width: 5,
        ),
        Container(
            height: 20,
            width: 20,
            color: widget.sixthAchievement == false
                ? sixthColor = Colors.white
                : sixthColor = Colors.green,
            margin: const EdgeInsets.only(right: 10),
            child: Center(child: Text(sixthColor == Colors.green ? '✔' : ''))),
      ],
    );
  }
}
