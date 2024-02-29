import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_quest/app/cubit/root_cubit.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({
    super.key,
  });

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'Write an email to reset your password',
                style: GoogleFonts.aBeeZee(
                    fontSize: 34,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: TextField(
                controller: email,
                style: GoogleFonts.aBeeZee(color: Colors.white),
                decoration: InputDecoration(
                    hintText: 'E-mail',
                    hintStyle: GoogleFonts.aBeeZee(color: Colors.white),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
            ),
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
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: ElevatedButton.icon(
                  onPressed: () {
                    context.read<RootCubit>().forgotPassword(email.text);
                  },
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size.fromHeight(50),
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent),
                  label: Text('Reset password',
                      style: GoogleFonts.aBeeZee(
                        fontSize: 24,
                        color: Colors.white,
                      )),
                  icon: const Icon(
                    Icons.email,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
