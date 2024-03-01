import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:quiz_quest/app/core/enums.dart';
import 'package:quiz_quest/app/cubit/root_cubit.dart';
import 'package:quiz_quest/app/features/home_page/home_page.dart';
import 'package:quiz_quest/app/features/login_page/forgot_password_page.dart';

class LoginPage extends StatefulWidget {
  LoginPage({
    super.key,
  });

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var errorMessage = '';
  var isCreatingAccount = false;

  @override
  Widget build(BuildContext context) {
    return BlocListener<RootCubit, RootState>(
      listener: (context, state) {
        if (state.status == Status.error) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              behavior: SnackBarBehavior.floating,
              backgroundColor: Colors.red,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              content: Padding(
                padding: const EdgeInsets.all(8),
                child: Row(
                  children: [
                    const Icon(Icons.error, color: Colors.white),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        state.errorMessage ?? '',
                        style: const TextStyle(color: Colors.white),
                        softWrap: true,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );

          return;
        } else if (state.user != null) {
          Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (_) => HomePage(user: state.user!)));
        }
      },
      child: Scaffold(
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
                  'Login Page',
                  style: GoogleFonts.aBeeZee(
                      fontSize: 34,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                width: double.infinity,
                height: 250,
                child: Lottie.asset('images/quiz_animation.json'),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: TextField(
                  controller: widget.emailController,
                  style: GoogleFonts.aBeeZee(color: Colors.white),
                  decoration: InputDecoration(
                      hintText: 'Login',
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
                  obscureText: true,
                  controller: widget.passwordController,
                  style: GoogleFonts.aBeeZee(color: Colors.white),
                  decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: GoogleFonts.aBeeZee(color: Colors.white),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
              if (isCreatingAccount == true) ...[
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: TextField(
                    obscureText: true,
                    controller: widget.confirmPasswordController,
                    style: GoogleFonts.aBeeZee(color: Colors.white),
                    decoration: InputDecoration(
                        hintText: 'Confirm Password',
                        hintStyle: GoogleFonts.aBeeZee(color: Colors.white),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                ),
              ],
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
                    onPressed: () async {
                      if (isCreatingAccount == false) {
                        context.read<RootCubit>().signInAccount(
                              widget.emailController.text,
                              widget.passwordController.text,
                            );
                      }

                      if (isCreatingAccount == true &&
                          widget.passwordController.text ==
                              widget.confirmPasswordController.text) {
                        context.read<RootCubit>().createAccount(
                              widget.emailController.text,
                              widget.passwordController.text,
                            );
                      } else if (isCreatingAccount == true &&
                          widget.passwordController.text !=
                              widget.confirmPasswordController.text) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            behavior: SnackBarBehavior.floating,
                            backgroundColor: Colors.red,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            content: const Padding(
                              padding: EdgeInsets.all(8),
                              child: Row(
                                children: [
                                  Icon(Icons.error, color: Colors.white),
                                  SizedBox(width: 8),
                                  Expanded(
                                    child: Text(
                                      'Passwords are different, set the right passwords.',
                                      style: TextStyle(color: Colors.white),
                                      softWrap: true,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );

                        return;
                      }
                    },
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size.fromHeight(50),
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent),
                    label: Text(isCreatingAccount ? 'Sign up' : 'Sign in',
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
              if (isCreatingAccount == false) ...[
                TextButton(
                    onPressed: () async {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const ForgotPasswordPage()));
                    },
                    child: Text('Forgot password?',
                        style: GoogleFonts.aBeeZee(
                          fontSize: 18,
                          color: Colors.white,
                        ))),
                TextButton(
                    onPressed: () {
                      setState(() {
                        isCreatingAccount = true;
                      });
                    },
                    child: Text('No account? Sign up',
                        style: GoogleFonts.aBeeZee(
                          fontSize: 18,
                          color: Colors.white,
                        )))
              ],
              if (isCreatingAccount == true) ...[
                TextButton(
                    onPressed: () {
                      setState(() {
                        isCreatingAccount = false;
                      });
                    },
                    child: Text('You have account? Sign in',
                        style: GoogleFonts.aBeeZee(
                          fontSize: 18,
                          color: Colors.white,
                        )))
              ],
            ],
          ),
        ),
      ),
    );
  }
}
