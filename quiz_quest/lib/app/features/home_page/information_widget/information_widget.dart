import 'package:flutter/material.dart';
import 'package:super_tooltip/super_tooltip.dart';

class InformationWidget extends StatelessWidget {
  const InformationWidget({
    super.key,
    required this.toolController,
  });

  final SuperTooltipController toolController;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        await toolController.showTooltip();
      },
      child: SuperTooltip(
        showBarrier: true,
        controller: toolController,
        content: const Text(
          '''Hello! 👋 If you want to start the game, simply click on a category in the 'Quiz' section. You can share your total points with others by tapping the icon (assuming you've scored some points). To update your personal information, click on 'My Account'. You can track your ranking by tapping the 🏆 button. I hope you have a lot of fun with this app! 😄''',
          softWrap: true,
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        child: Container(
          width: 50.0,
          height: 50.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            gradient: const LinearGradient(
              colors: [
                Color.fromARGB(255, 59, 102, 244),
                Color.fromARGB(255, 8, 5, 214),
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
          ),
          child: const Icon(
            Icons.question_mark,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
