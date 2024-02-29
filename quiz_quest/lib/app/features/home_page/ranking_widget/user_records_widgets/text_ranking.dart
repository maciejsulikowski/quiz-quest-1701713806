import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextRanking extends StatefulWidget {
  const TextRanking({
    required this.text,
    super.key,
  });

  final String text;

  @override
  State<TextRanking> createState() => _TextRankingState();
}

class _TextRankingState extends State<TextRanking> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.text,
      style: GoogleFonts.aBeeZee(
          fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
    );
  }
}
