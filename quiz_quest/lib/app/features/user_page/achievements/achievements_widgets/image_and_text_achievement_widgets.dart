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
import 'package:quiz_quest/app/features/user_page/achievements/achievements_widgets/fifth_achievement.dart';
import 'package:quiz_quest/app/features/user_page/achievements/achievements_widgets/first_achievement.dart';
import 'package:quiz_quest/app/features/user_page/achievements/achievements_widgets/fourth_achievement.dart';
import 'package:quiz_quest/app/features/user_page/achievements/achievements_widgets/second_achievement.dart';
import 'package:quiz_quest/app/features/user_page/achievements/achievements_widgets/sixth_achievement.dart';
import 'package:quiz_quest/app/features/user_page/achievements/achievements_widgets/third_achievement.dart';
import 'package:quiz_quest/app/features/user_page/achievements/cubit/achievements_cubit.dart';
import 'package:quiz_quest/app/features/user_page/cubit/user_cubit.dart';
import 'package:quiz_quest/app/injection_container.dart';

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
