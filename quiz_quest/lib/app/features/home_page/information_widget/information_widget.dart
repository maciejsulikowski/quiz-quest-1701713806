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
          '''Hello 👋 If you want to start the game, just click on a category in "Quiz". You can share your total points with other people next to result, just click the icon. If you want to change your personal information, you can click "My Account". I hope you will have fun with this app 😄''',
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
