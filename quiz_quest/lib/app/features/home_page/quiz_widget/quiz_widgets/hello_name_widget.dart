import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_quest/app/features/home_page/quiz_widget/quiz_widget.dart';

class HelloNameWidget extends StatelessWidget {
  const HelloNameWidget({
    super.key,
    required this.widget,
  });

  final QuizzWidget widget;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Text(
        'Hello ${widget.userName} 👋',
        style: GoogleFonts.aBeeZee(
            fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }
}
