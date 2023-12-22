import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_quest/app/domain/models/animals_quiz_model.dart';

class QuestionQuizPage extends StatefulWidget {
  const QuestionQuizPage({
    required this.model,
    super.key,
  });

  final AnimalsQuizModel? model;

  @override
  State<QuestionQuizPage> createState() => _QuestionQuizPageState();
}

class _QuestionQuizPageState extends State<QuestionQuizPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quest'),
      ),
      body: SafeArea(
        child: QuizzPage(
          model: widget.model,
        ),
      ),
    );
  }
}

class QuizzPage extends StatelessWidget {
  const QuizzPage({
    required this.model,
    super.key,
  });

  final AnimalsQuizModel? model;

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
              size: 50,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          if (model != null)
            for (final quest in model!.results)
              QuestionWidget(
                question: quest.question,
              ),
          const SizedBox(
            height: 30,
          ),
          const AnswerWidget(
            answer: '100',
          ),
          const SizedBox(
            height: 30,
          ),
          const AnswerWidget(
            answer: '200',
          ),
          const SizedBox(
            height: 30,
          ),
          const AnswerWidget(
            answer: '300',
          ),
          const SizedBox(
            height: 30,
          ),
          const AnswerWidget(
            answer: '400',
          ),
        ],
      ),
    );
  }
}

class QuestionWidget extends StatelessWidget {
  const QuestionWidget({
    required this.question,
    super.key,
  });

  final String question;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        question,
        style: GoogleFonts.aBeeZee(
            fontSize: 28, color: Colors.white, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}

class AnswerWidget extends StatelessWidget {
  const AnswerWidget({
    required this.answer,
    super.key,
  });

  final String answer;

  @override
  Widget build(BuildContext context) {
    return Container(
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
            Radius.circular(6.0),
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
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            minimumSize: const Size.fromHeight(50),
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent),
        child: Text(answer,
            style: GoogleFonts.aBeeZee(
              fontSize: 24,
              color: Colors.white,
            )),
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
