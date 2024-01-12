import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:quiz_quest/app/cubit/root_cubit.dart';
import 'package:quiz_quest/app/features/login_page/login_page.dart';
import 'package:quiz_quest/app/features/user_page/cubit/user_cubit.dart';

class UserAccount extends StatefulWidget {
  const UserAccount({
    required this.user,
    super.key,
  });

  final User? user;

  @override
  State<UserAccount> createState() => _UserAccountState();
}

var nameController = TextEditingController();
var surnameController = TextEditingController();
var emailController = TextEditingController();
var genderController = TextEditingController();
var categoryController = TextEditingController();

class _UserAccountState extends State<UserAccount> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserCubit()..start(),
      child: BlocBuilder<UserCubit, UserState>(
        builder: (context, state) {
          final userModel = state.userModel;
          nameController = TextEditingController(text: userModel?.name ?? '');
          surnameController =
              TextEditingController(text: userModel?.surname ?? '');
          emailController =
              TextEditingController(text: widget.user?.email ?? '');
          genderController =
              TextEditingController(text: userModel?.gender ?? '');
          categoryController =
              TextEditingController(text: userModel?.favouriteCategory ?? '');
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
                    Icons.photo_camera,
                    size: 40,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Center(
                  child: Text(
                    'Profile',
                    style: GoogleFonts.aBeeZee(
                        fontSize: 40,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                if (userModel != null)
                  TextFieldWidget(name: 'Name', controller: nameController),
                TextFieldWidget(
                  name: 'Surname',
                  controller: surnameController,
                ),
                TextFieldWidget(
                  name: 'E-mail',
                  controller: emailController,
                ),
                TextFieldWidget(
                  name: 'Gender',
                  controller: genderController,
                ),
                const SizedBox(
                  height: 15,
                ),
                TextFieldWidget(
                  name: 'Favourite category',
                  controller: categoryController,
                ),
                const SizedBox(
                  height: 15,
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
                          context.read<RootCubit>().signOut();
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()),
                          );
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
        },
      ),
    );
  }
}

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    required this.name,
    required this.controller,
    super.key,
  });

  final String name;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: TextField(
          controller: controller,
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
