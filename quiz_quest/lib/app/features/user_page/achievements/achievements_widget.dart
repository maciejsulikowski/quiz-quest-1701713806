import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

import 'package:quiz_quest/app/cubit/root_cubit.dart';
import 'package:quiz_quest/app/data/data_sources/achievements_data_source/achievements_data_source.dart';
import 'package:quiz_quest/app/data/data_sources/user_data_source/user_data_source.dart';
import 'package:quiz_quest/app/domain/models/user_model/user_model.dart';
import 'package:quiz_quest/app/domain/repositories/achievement_repository/achievement_repository.dart';
import 'package:quiz_quest/app/domain/repositories/user_repository/user_repository.dart';
import 'package:quiz_quest/app/features/login_page/login_page.dart';
import 'package:quiz_quest/app/features/user_page/achievements/cubit/achievements_cubit.dart';
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
    return BlocProvider(
      create: (context) => AchievementsCubit(
          AchievementRepository(achievementDataSource: AchievementDataSource()))
        ..getAchievements(),
      child: BlocBuilder<AchievementsCubit, AchievementsState>(
        builder: (context, state) {
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
                if (state.achievementModel != null)
                  AchievementContainer(
                    achievementWidget: FirstAchievement(
                        firstAchievement:
                            state.achievementModel!.isFirstAchievementReady),
                  ),
                const SizedBox(height: 10),
                if (state.achievementModel != null)
                  AchievementContainer(
                    achievementWidget: SecondAchievement(
                      secondAchievement:
                          state.achievementModel!.isSecondAchievementReady,
                    ),
                  ),
                const SizedBox(height: 10),
                if (state.achievementModel != null)
                  AchievementContainer(
                    achievementWidget: ThirdAchievement(
                      thirdAchievement:
                          state.achievementModel!.isThirdAchievementReady,
                    ),
                  ),
                const SizedBox(height: 10),
                if (state.achievementModel != null)
                  AchievementContainer(
                    achievementWidget: FourthAchievement(
                      fourthAchievement:
                          state.achievementModel!.isFourthAchievementReady,
                    ),
                  ),
                const SizedBox(height: 10),
                if (state.achievementModel != null)
                  AchievementContainer(
                    achievementWidget: FifthAchievement(
                      fifthAchievement:
                          state.achievementModel!.isFifthAchievementReady,
                    ),
                  ),
                const SizedBox(height: 10),
                if (state.achievementModel != null)
                  AchievementContainer(
                    achievementWidget: SixthAchievement(
                      sixthAchievement:
                          state.achievementModel!.isSixthAchievementReady,
                    ),
                  ),
                const SizedBox(height: 10),
              ],
            ),
          );
        },
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

class SecondAchievement extends StatefulWidget {
  SecondAchievement({
    required this.secondAchievement,
    super.key,
  });

  bool secondAchievement;

  @override
  State<SecondAchievement> createState() => _SecondAchievementState();
}

class _SecondAchievementState extends State<SecondAchievement> {
  Color secondColor = Colors.green;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 10.0),
          child: AchievementImageWidget(
            image: 'images/2-removebg-preview.png',
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
        InkWell(
          onTap: () {},
          child: Container(
              height: 20,
              width: 20,
              color: widget.secondAchievement == false
                  ? secondColor = Colors.white
                  : secondColor = Colors.green,
              margin: const EdgeInsets.only(right: 10),
              child:
                  Center(child: Text(secondColor == Colors.green ? '✔' : ''))),
        )
      ],
    );
  }
}

class FirstAchievement extends StatefulWidget {
  FirstAchievement({
    required this.firstAchievement,
    super.key,
  });

  bool firstAchievement;

  @override
  State<FirstAchievement> createState() => _FirstAchievementState();
}

class _FirstAchievementState extends State<FirstAchievement> {
  Color firstColor = Colors.green;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 10.0),
          child: AchievementImageWidget(
            image: 'images/1-removebg-preview.png',
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
        InkWell(
          onTap: () {},
          child: Container(
              height: 20,
              width: 20,
              color: widget.firstAchievement == false
                  ? firstColor = Colors.white
                  : firstColor = Colors.green,
              margin: const EdgeInsets.only(right: 10),
              child:
                  Center(child: Text(firstColor == Colors.green ? '✔' : ''))),
        )
      ],
    );
  }
}

class ThirdAchievement extends StatefulWidget {
  ThirdAchievement({
    required this.thirdAchievement,
    super.key,
  });

  bool thirdAchievement;

  @override
  State<ThirdAchievement> createState() => _ThirdAchievementState();
}

class _ThirdAchievementState extends State<ThirdAchievement> {
  Color thirdColor = Colors.green;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 10.0),
          child: AchievementImageWidget(
            image: 'images/3-removebg-preview.png',
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
            color: widget.thirdAchievement == false
                ? thirdColor = Colors.white
                : thirdColor = Colors.green,
            margin: const EdgeInsets.only(right: 10),
            child: Center(child: Text(thirdColor == Colors.green ? '✔' : ''))),
      ],
    );
  }
}

class FourthAchievement extends StatefulWidget {
  FourthAchievement({
    required this.fourthAchievement,
    super.key,
  });

  bool fourthAchievement;

  @override
  State<FourthAchievement> createState() => _FourthAchievementState();
}

class _FourthAchievementState extends State<FourthAchievement> {
  Color fourthColor = Colors.green;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 10.0),
          child: AchievementImageWidget(
            image: 'images/4-removebg-preview.png',
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
            color: widget.fourthAchievement == false
                ? fourthColor = Colors.white
                : fourthColor = Colors.green,
            margin: const EdgeInsets.only(right: 10),
            child: Center(child: Text(fourthColor == Colors.green ? '✔' : ''))),
      ],
    );
  }
}

class FifthAchievement extends StatefulWidget {
  FifthAchievement({
    required this.fifthAchievement,
    super.key,
  });

  bool fifthAchievement;

  @override
  State<FifthAchievement> createState() => _FifthAchievementState();
}

class _FifthAchievementState extends State<FifthAchievement> {
  Color fifthColor = Colors.green;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 10.0),
          child: AchievementImageWidget(
            image: 'images/5-removebg-preview.png',
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
            color: widget.fifthAchievement == false
                ? fifthColor = Colors.white
                : fifthColor = Colors.green,
            margin: const EdgeInsets.only(right: 10),
            child: Center(child: Text(fifthColor == Colors.green ? '✔' : ''))),
      ],
    );
  }
}

class SixthAchievement extends StatefulWidget {
  SixthAchievement({
    required this.sixthAchievement,
    super.key,
  });
  bool sixthAchievement;

  @override
  State<SixthAchievement> createState() => _SixthAchievementState();
}

class _SixthAchievementState extends State<SixthAchievement> {
  Color sixthColor = Colors.green;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 10.0),
          child: AchievementImageWidget(
            image: 'images/6-removebg-preview.png',
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
            color: widget.sixthAchievement == false
                ? sixthColor = Colors.white
                : sixthColor = Colors.green,
            margin: const EdgeInsets.only(right: 10),
            child: Center(child: Text(sixthColor == Colors.green ? '✔' : ''))),
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
