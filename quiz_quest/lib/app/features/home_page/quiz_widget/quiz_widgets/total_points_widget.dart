import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:share_plus/share_plus.dart';


class TotalPointsWidget extends StatelessWidget {
  const TotalPointsWidget({
    super.key,
    required this.allPoints,
  });

  final int allPoints;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [
                Color.fromARGB(255, 94, 128, 239),
                Color.fromARGB(255, 76, 75, 167),
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
            borderRadius: BorderRadius.circular(20),
            color: Colors.red),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Total Points: $allPoints💎',
              style: GoogleFonts.aBeeZee(
                  fontSize: 26,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            allPoints != 0
                ? IconButton(
                    onPressed: () {
                      String message =
                          'In QuizQuest you scored Total Points: $allPoints💎! Congratulations!';
                      Share.share(message);
                    },
                    icon: const Icon(
                      Icons.share,
                      color: Colors.white54,
                    ))
                : const SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}
