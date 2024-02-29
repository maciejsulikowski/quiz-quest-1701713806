import 'package:flutter/material.dart';
class NoAchievementWidget extends StatelessWidget {
  const NoAchievementWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      backgroundColor: Colors.transparent,
      radius: 35,
      backgroundImage: AssetImage('images/question_mark.png'),
    );
  }
}
