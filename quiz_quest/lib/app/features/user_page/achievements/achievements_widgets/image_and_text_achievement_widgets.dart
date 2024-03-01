import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AchievementImageWidget extends StatelessWidget {
  const AchievementImageWidget({
    required this.image,
    super.key,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.transparent,
      radius: 35,
      backgroundImage: AssetImage(image),
    );
  }
}

class AchievementTextWidget extends StatelessWidget {
  const AchievementTextWidget({
    required this.text,
    super.key,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.aBeeZee(
        fontSize: 14,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
