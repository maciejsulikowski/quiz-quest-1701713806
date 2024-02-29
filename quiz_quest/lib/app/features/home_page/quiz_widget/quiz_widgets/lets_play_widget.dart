import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_quest/app/features/home_page/quiz_widget/quiz_widget.dart';
import 'package:quiz_quest/app/features/home_page/ranking_button/ranking_button.dart';
class LetsPlayWidget extends StatelessWidget {
  const LetsPlayWidget({
    super.key,
    required this.widget,
  });

  final QuizzWidget widget;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '''Let's play''',
            style: GoogleFonts.aBeeZee(
                fontSize: 46, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          RankingButton(user: widget.user)
        ],
      ),
    );
  }
}
