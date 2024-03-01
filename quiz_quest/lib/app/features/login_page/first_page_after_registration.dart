import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_quest/app/features/user_page/cubit/user_cubit.dart';

// ignore: must_be_immutable
class FirstPageAfterRegistration extends StatefulWidget {
  FirstPageAfterRegistration({
    required this.isNewUser,
    required this.setUserOld,
    super.key,
  });

  bool isNewUser;
  Function(bool) setUserOld;
  @override
  State<FirstPageAfterRegistration> createState() =>
      _FirstPageAfterRegistrationState();
}

class _FirstPageAfterRegistrationState
    extends State<FirstPageAfterRegistration> {
  var nameController = TextEditingController();
  var surnameController = TextEditingController();
  var errorMessage = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
            const SizedBox(height: 20),
            Center(
              child: Text(
                'Hello 👋',
                style: GoogleFonts.aBeeZee(
                    fontSize: 34,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Welcome to QuizQuest! 🤴',
                style: GoogleFonts.aBeeZee(
                    fontSize: 26,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Please enter your name and surname for better experience...',
                style: GoogleFonts.aBeeZee(
                    fontSize: 22,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: TextField(
                onChanged: (value) {
                  setState(() {
                    nameController.text = value;
                  });
                },
                controller: nameController,
                style: GoogleFonts.aBeeZee(color: Colors.white),
                decoration: InputDecoration(
                    hintText: 'Name',
                    hintStyle: GoogleFonts.aBeeZee(color: Colors.white),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: TextField(
                onChanged: (value) {
                  setState(() {
                    surnameController.text = value;
                  });
                },
                controller: surnameController,
                style: GoogleFonts.aBeeZee(color: Colors.white),
                decoration: InputDecoration(
                    hintText: 'Surname',
                    hintStyle: GoogleFonts.aBeeZee(color: Colors.white),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
            ),
            const SizedBox(
              height: 20,
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
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: ElevatedButton.icon(
                  onPressed: nameController.text.isEmpty ||
                          surnameController.text.isEmpty
                      ? null
                      : () {
                          context
                              .read<UserCubit>()
                              .updateName(nameController.text);
                          context
                              .read<UserCubit>()
                              .updateRankingName(nameController.text);
                          context
                              .read<UserCubit>()
                              .updateSurname(surnameController.text);
                          context.read<UserCubit>().changeUserBool();
                        },
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size.fromHeight(50),
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent),
                  label: Text('Start quizzing',
                      style: GoogleFonts.aBeeZee(
                        fontSize: 24,
                        color: Colors.white,
                      )),
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextButton(
                onPressed: () async {
                  context.read<UserCubit>().changeUserBool();
                },
                child: Text('''I'll do it later''',
                    style: GoogleFonts.aBeeZee(
                      fontSize: 18,
                      color: Colors.white,
                    ))),
          ],
        ),
      ),
    );
  }
}
