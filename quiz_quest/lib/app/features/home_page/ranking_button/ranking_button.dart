import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:quiz_quest/app/features/home_page/ranking_widget/ranking_widget.dart';

class RankingButton extends StatelessWidget {
  const RankingButton({
    required this.user,
    super.key,
  });

  final User? user;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => RankingWidget(user: user)));
      },
      child: Container(
        height: 50,
        width: 50,
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
        child: const Center(
            child: Text(
          '🏆',
          style: TextStyle(fontSize: 20),
        )),
      ),
    );
  }
}
