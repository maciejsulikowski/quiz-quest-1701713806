import 'package:flutter/material.dart';

class AchievementContainer extends StatelessWidget {
  const AchievementContainer({
    required this.achievementWidget,
    super.key,
  });

  final Widget achievementWidget;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [
                Color.fromRGBO(115, 115, 116, 1),
                Color.fromRGBO(49, 51, 55, 1),
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(25.0),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                spreadRadius: 4,
                blurRadius: 10,
                offset: const Offset(0, 3),
              )
            ]),
        height: 90,
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: achievementWidget);
  }
}
