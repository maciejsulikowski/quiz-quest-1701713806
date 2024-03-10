import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MediumGeneralQuestionWidget extends StatelessWidget {
  const MediumGeneralQuestionWidget({
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
        .replaceAll('&amp;', '')
        .replaceAll('&rsquo;', '')
        .replaceAll('&ldquo;', '')
        .replaceAll('&rdquo;', '')
        .replaceAll('&lrm;', '')
        .replaceAll('&Eacute;', '')
        .replaceAll('&shy;', '')
        .replaceAll('&ouml;', '')
        .replaceAll('&aring;', '')
        .replaceAll('&auml;', '')
        .replaceAll('&heelip;', '');

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
