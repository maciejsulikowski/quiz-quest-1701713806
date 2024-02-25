import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

import 'package:quiz_quest/app/cubit/root_cubit.dart';
import 'package:quiz_quest/app/data/data_sources/user_data_source/user_data_source.dart';
import 'package:quiz_quest/app/domain/models/user_model/user_model.dart';
import 'package:quiz_quest/app/domain/repositories/user_repository/user_repository.dart';
import 'package:quiz_quest/app/features/login_page/login_page.dart';
import 'package:quiz_quest/app/features/user_page/cubit/user_cubit.dart';
import 'package:quiz_quest/app/injection_container.dart';

class AchievementsPage extends StatefulWidget {
  const AchievementsPage({
    required this.user,
    super.key,
  });

  final User? user;

  @override
  State<AchievementsPage> createState() => _AchievementsPageState();
}

class _AchievementsPageState extends State<AchievementsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: AchievementsWidget(
        user: widget.user!,
      ),
    );
  }
}

class AchievementsWidget extends StatefulWidget {
  const AchievementsWidget({
    required this.user,
    super.key,
  });

  final User? user;

  @override
  State<AchievementsWidget> createState() => _AchievementsWidgetState();
}

class _AchievementsWidgetState extends State<AchievementsWidget> {
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
            height: 10,
          ),
          Center(
            child: Text(
              'Your Achievements',
              style: GoogleFonts.aBeeZee(
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 10),
          AchievementContainer(
            achievementWidget: FirstAchievement(),
          ),
          const SizedBox(height: 10),
          AchievementContainer(
            achievementWidget: SecondAchievement(),
          ),
          const SizedBox(height: 10),
          AchievementContainer(
            achievementWidget: ThirdAchievement(),
          ),
          const SizedBox(height: 10),
          AchievementContainer(
            achievementWidget: FourthAchievement(),
          ),
          const SizedBox(height: 10),
          AchievementContainer(
            achievementWidget: FifthAchievement(),
          ),
          const SizedBox(height: 10),
          AchievementContainer(
            achievementWidget: SixthAchievement(),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}

class AchievementContainer extends StatelessWidget {
  const AchievementContainer({
    required this.achievementWidget,
    super.key,
  });

  final Widget achievementWidget;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [
                Color.fromRGBO(115, 115, 116, 1),
                Color.fromRGBO(49, 51, 55, 1),
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
        height: 90,
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: achievementWidget);
  }
}

class SecondAchievement extends StatelessWidget {
  const SecondAchievement({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 10.0),
          child: AchievementImageWidget(
            image: 'images/2.png',
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        const Expanded(
            child: AchievementTextWidget(text: 'You scored 500 points!')),
        const SizedBox(
          width: 5,
        ),
        Container(
          height: 20,
          width: 20,
          color: Colors.white,
          margin: const EdgeInsets.only(right: 10),
        )
      ],
    );
  }
}

class FirstAchievement extends StatelessWidget {
  const FirstAchievement({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 10.0),
          child: AchievementImageWidget(
            image: 'images/1.png',
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        const Expanded(
            child: AchievementTextWidget(
                text: 'You scored your first 100 points!')),
        const SizedBox(
          width: 5,
        ),
        Container(
          height: 20,
          width: 20,
          color: Colors.white,
          margin: const EdgeInsets.only(right: 10),
        )
      ],
    );
  }
}

class ThirdAchievement extends StatelessWidget {
  const ThirdAchievement({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 10.0),
          child: AchievementImageWidget(
            image: 'images/3.png',
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        const Expanded(
            child: AchievementTextWidget(text: 'You scored 1000 points!')),
        const SizedBox(
          width: 5,
        ),
        Container(
          height: 20,
          width: 20,
          color: Colors.white,
          margin: const EdgeInsets.only(right: 10),
        )
      ],
    );
  }
}

class FourthAchievement extends StatelessWidget {
  const FourthAchievement({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 10.0),
          child: AchievementImageWidget(
            image: 'images/4.png',
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        const Expanded(
            child: AchievementTextWidget(text: 'You scored 2000 points!')),
        const SizedBox(
          width: 5,
        ),
        Container(
          height: 20,
          width: 20,
          color: Colors.white,
          margin: const EdgeInsets.only(right: 10),
        )
      ],
    );
  }
}

class FifthAchievement extends StatelessWidget {
  const FifthAchievement({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 10.0),
          child: AchievementImageWidget(
            image: 'images/5.png',
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        const Expanded(
            child: AchievementTextWidget(text: 'You scored 5000 points!')),
        const SizedBox(
          width: 5,
        ),
        Container(
          height: 20,
          width: 20,
          color: Colors.white,
          margin: const EdgeInsets.only(right: 10),
        )
      ],
    );
  }
}

class SixthAchievement extends StatelessWidget {
  const SixthAchievement({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 10.0),
          child: AchievementImageWidget(
            image: 'images/6.png',
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        const Expanded(
            child: AchievementTextWidget(text: 'You scored 10000 points!')),
        const SizedBox(
          width: 5,
        ),
        Container(
          height: 20,
          width: 20,
          color: Colors.white,
          margin: const EdgeInsets.only(right: 10),
        )
      ],
    );
  }
}

class AchievementImageWidget extends StatelessWidget {
  const AchievementImageWidget({
    required this.image,
    super.key,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
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
    return Text(text);
  }
}
