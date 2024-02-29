import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_quest/app/features/quiz_pages/sports_quiz_pages/easy_sport_quiz_page/easy_question_quiz_page.dart';

class SecondEasyQuizPageSport extends StatefulWidget {
  const SecondEasyQuizPageSport({
    required this.image,
    required this.easyCategory,
    super.key,
  });

  final String image;
  final dynamic easyCategory;

  @override
  State<SecondEasyQuizPageSport> createState() =>
      _SecondEasyQuizPageSportState();
}

class _SecondEasyQuizPageSportState extends State<SecondEasyQuizPageSport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: QuizzPage(
        image: widget.image,
        easyCategory: widget.easyCategory,
      ),
    );
  }
}

class QuizzPage extends StatelessWidget {
  const QuizzPage({
    required this.image,
    required this.easyCategory,
    super.key,
  });

  final String image;
  final dynamic easyCategory;

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
          Center(
            child: CircleAvatar(
              radius: 35,
              backgroundImage: AssetImage(image),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Center(
            child: Text(
              'Your record in easy category: $easyCategory💎',
              style: GoogleFonts.aBeeZee(
                fontSize: 18,
                color: Colors.white,
              ),
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
          const SizedBox(
            height: 30,
          ),
          const TextWidget(text: 'You have 20 second to answer'),
          const SizedBox(
            height: 30,
          ),
          const TextWidget(text: 'You have 3 lives ❤️❤️❤️'),
          const SizedBox(
            height: 30,
          ),
          const TextWidget(text: '1 good answer = 10 points 💎'),
          const SizedBox(
            height: 30,
          ),
          const TextWidget(
              text: 'Go as far as you can and keep moving forward  🔥 🧨'),
          const SizedBox(
            height: 30,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Color.fromRGBO(143, 165, 255, 1),
                    Color.fromRGBO(10, 53, 132, 1),
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
                borderRadius: const BorderRadius.all(
                  Radius.circular(25.0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 4,
                    blurRadius: 10,
                    offset: const Offset(0, 3),
                  )
                ]),
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const EasyQuestionSportQuizPage(),
                ));
              },
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(50),
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent),
              child: Text('''Ready? Let's go!''',
                  style: GoogleFonts.aBeeZee(
                    fontSize: 24,
                    color: Colors.white,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}

class TextWidget extends StatelessWidget {
  const TextWidget({
    required this.text,
    super.key,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16),
      child: Text(
        text,
        style: GoogleFonts.aBeeZee(
          fontSize: 24,
          color: Colors.white,
        ),
      ),
    );
  }
}
