import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class UserAccount extends StatelessWidget {
  const UserAccount({
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
              'User',
              style: GoogleFonts.aBeeZee(
                  fontSize: 46,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const TextFieldWidget(name: 'Name'),
          const SizedBox(
            height: 15,
          ),
          const TextFieldWidget(name: 'Surname'),
          const SizedBox(
            height: 15,
          ),
          const TextFieldWidget(name: 'E-mail'),
          const SizedBox(
            height: 15,
          ),
          const TextFieldWidget(name: 'Gender'),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 26),
            child: Container(
              decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Color.fromARGB(255, 94, 128, 239),
                      Color.fromARGB(255, 76, 75, 167),
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.red),
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: ElevatedButton.icon(
                  onPressed: () {
                    FirebaseAuth.instance.signOut();
                  },
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size.fromHeight(50),
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent),
                  label: Text('Logout',
                      style: GoogleFonts.aBeeZee(
                        fontSize: 28,
                        color: Colors.white,
                        fontStyle: FontStyle.italic,
                      )),
                  icon: const Icon(
                    Icons.logout,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    required this.name,
    super.key,
  });

  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: TextField(
          style: GoogleFonts.aBeeZee(
              fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
          decoration: InputDecoration(
            border: const UnderlineInputBorder(),
            hintStyle: const TextStyle(color: Colors.white),
            labelStyle: const TextStyle(color: Colors.white54, fontSize: 18),
            labelText: name,
          ),
        ));
  }
}
