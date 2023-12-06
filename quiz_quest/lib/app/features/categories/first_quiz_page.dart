import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_quest/app/features/home_page/user_account.dart';

class FirstQuizPage extends StatefulWidget {
  const FirstQuizPage({
    super.key,
  });

  @override
  State<FirstQuizPage> createState() => _FirstQuizPageState();
}

class _FirstQuizPageState extends State<FirstQuizPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quizz'),
      ),
      body: const SafeArea(
        child: QuizzPage(),
      ),
    );
  }
}

class QuizzPage extends StatelessWidget {
  const QuizzPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 10, 58, 214),
            Color.fromARGB(255, 22, 20, 129),
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
      child: ListView(
        children: [
          const SizedBox(
            height: 30,
          ),
          const CircleAvatar(
            radius: 50,
            child: Icon(
              Icons.question_mark,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Center(
            child: Text(
              'Rules',
              style: GoogleFonts.aBeeZee(
                  fontSize: 46,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
