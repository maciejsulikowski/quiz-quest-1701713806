import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HardMusicQuestionWidget extends StatelessWidget {
  const HardMusicQuestionWidget({
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
        .replaceAll('&oacute;', '')
        .replaceAll('&ntilde;', '')
        .replaceAll('&micro;', '')
        .replaceAll('&amp;', '')
        .replaceAll('&Uuml;', '')
        .replaceAll('&euml;', '')
        .replaceAll('&rsquo;', '');

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
