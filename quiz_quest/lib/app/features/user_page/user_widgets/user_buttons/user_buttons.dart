import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_quest/app/cubit/root_cubit.dart';
import 'package:quiz_quest/app/features/login_page/login_page.dart';
import 'package:quiz_quest/app/features/user_page/achievements/achievements_widget.dart';
import 'package:quiz_quest/app/features/user_page/user_widgets/user_widget/user_widget.dart';

class AchievementButton extends StatelessWidget {
  const AchievementButton({
    super.key,
    required this.widget,
  });

  final UserWidget widget;

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
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => AchievementsPage(
                      user: widget.user,
                    )),
          );
        },
        style: ElevatedButton.styleFrom(
            minimumSize: const Size.fromHeight(50),
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent),
        child: Text('Achievements',
            style: GoogleFonts.aBeeZee(
              fontSize: 24,
              color: Colors.white,
            )),
      ),
    );
  }
}

class LogoutButton extends StatelessWidget {
  const LogoutButton({
    super.key,
  });

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
          context.read<RootCubit>().signOut();
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => LoginPage()),
          );
        },
        style: ElevatedButton.styleFrom(
            minimumSize: const Size.fromHeight(50),
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent),
        child: Text('Logout',
            style: GoogleFonts.aBeeZee(
              fontSize: 24,
              color: Colors.white,
            )),
      ),
    );
  }
}
