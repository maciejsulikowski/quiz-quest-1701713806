import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MediumGamesQuestionWidget extends StatelessWidget {
  const MediumGamesQuestionWidget({
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
        .replaceAll('&eacute;', '')
        .replaceAll('&iuml;', '')
        .replaceAll('&eacute;', '')
        .replaceAll('&sup2;', '');

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
