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
import 'package:quiz_quest/app/features/user_page/achievements/achievements_widget.dart';
import 'package:quiz_quest/app/features/user_page/cubit/user_cubit.dart';
import 'package:quiz_quest/app/features/user_page/user_widgets/user_buttons/user_buttons.dart';
import 'package:quiz_quest/app/features/user_page/user_widgets/user_widget/user_widget.dart';
import 'package:quiz_quest/app/injection_container.dart';

class UserAccount extends StatefulWidget {
  const UserAccount({
    required this.user,
    super.key,
  });

  final User? user;

  @override
  State<UserAccount> createState() => _UserAccountState();
}

class _UserAccountState extends State<UserAccount> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<UserCubit>()..start(),
      child: BlocListener<UserCubit, UserState>(
        listener: (context, state) {
          if (state.isSaved) {
            context.read<UserCubit>().start();
          }
        },
        child: BlocBuilder<UserCubit, UserState>(
          builder: (context, state) {
            if (widget.user == null) {
              return const CircularProgressIndicator();
            }
            return UserWidget(
              user: widget.user!,
              userModel: state.userModel,
            );
          },
        ),
      ),
    );
  }
}
