import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HardSportQuestionWidget extends StatelessWidget {
  const HardSportQuestionWidget({
    required this.question,
    super.key,
  });

  final String question;

  @override
  Widget build(BuildContext context) {
    final modifiedQuestion = question
        .replaceAll('&quot;', '')
        .replaceAll('&#039;', '')
        .replaceAll('&aacute;', '')
        .replaceAll('&ntilde;', '')
        .replaceAll('&amp;', '')
        .replaceAll('&rsquo;', '')
        .replaceAll('&rdquo;', '')
        .replaceAll('&ldquo;', '');

    return Center(
      child: Text(
        modifiedQuestion,
        style: GoogleFonts.aBeeZee(
            fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}
