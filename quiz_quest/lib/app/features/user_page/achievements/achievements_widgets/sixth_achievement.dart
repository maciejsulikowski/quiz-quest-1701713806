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
import 'package:quiz_quest/app/features/user_page/achievements/achievements_widgets/achievement_container.dart';
import 'package:quiz_quest/app/features/user_page/achievements/achievements_widgets/image_and_text_achievement_widgets.dart';
import 'package:quiz_quest/app/features/user_page/achievements/cubit/achievements_cubit.dart';
import 'package:quiz_quest/app/features/user_page/cubit/user_cubit.dart';
import 'package:quiz_quest/app/injection_container.dart';



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
