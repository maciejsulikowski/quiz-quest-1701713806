import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:quiz_quest/app/cubit/root_cubit.dart';
import 'package:quiz_quest/app/data/data_sources/user_data_source/user_data_source.dart';
import 'package:quiz_quest/app/domain/repositories/user_repository/user_repository.dart';
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
      create: (context) => UserCubit(UserRepository(UserDataSource()))..start(),
      child: BlocListener<UserCubit, UserState>(
        listener: (context, state) {},
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
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            controller: nameController,
                            style: GoogleFonts.aBeeZee(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                            decoration: const InputDecoration(
                              border: UnderlineInputBorder(),
                              hintStyle: TextStyle(color: Colors.white),
                              labelStyle: TextStyle(
                                  color: Colors.white54, fontSize: 18),
                              labelText: 'Name',
                            ),
                            onChanged: (text) =>
                                context.read<UserCubit>().updateName(text),
                          ),
                        ),
                        IconButton(
                          icon: Icon(
                            nameController.text.isNotEmpty
                                ? Icons.check
                                : Icons.clear,
                            color: Colors.white,
                          ),
                          onPressed: nameController.text.isEmpty
                              ? null
                              : () {
                                  context
                                      .read<UserCubit>()
                                      .updateName(nameController.text);
                                },
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            controller: surnameController,
                            style: GoogleFonts.aBeeZee(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                            decoration: const InputDecoration(
                              border: UnderlineInputBorder(),
                              hintStyle: TextStyle(color: Colors.white),
                              labelStyle: TextStyle(
                                  color: Colors.white54, fontSize: 18),
                              labelText: 'Surname',
                            ),
                          ),
                        ),
                        IconButton(
                          icon: Icon(
                            surnameController.text.isNotEmpty
                                ? Icons.check
                                : Icons.clear,
                            color: Colors.white,
                          ),
                          onPressed: surnameController.text.isEmpty
                              ? null
                              : () {
                                  context
                                      .read<UserCubit>()
                                      .updateName(surnameController.text);
                                },
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            controller: genderController,
                            style: GoogleFonts.aBeeZee(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                            decoration: const InputDecoration(
                              border: UnderlineInputBorder(),
                              hintStyle: TextStyle(color: Colors.white),
                              labelStyle: TextStyle(
                                  color: Colors.white54, fontSize: 18),
                              labelText: 'Gender',
                            ),
                          ),
                        ),
                        IconButton(
                          icon: Icon(
                            genderController.text.isNotEmpty
                                ? Icons.check
                                : Icons.clear,
                            color: Colors.white,
                          ),
                          onPressed: genderController.text.isEmpty
                              ? null
                              : () {
                                  context
                                      .read<UserCubit>()
                                      .updateName(genderController.text);
                                },
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            controller: emailController,
                            style: GoogleFonts.aBeeZee(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                            decoration: const InputDecoration(
                              border: UnderlineInputBorder(),
                              hintStyle: TextStyle(color: Colors.white),
                              labelStyle: TextStyle(
                                  color: Colors.white54, fontSize: 18),
                              labelText: 'Email',
                            ),
                          ),
                        ),
                        IconButton(
                          icon: const Icon(
                            Icons.check,
                            color: Colors.white,
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            controller: categoryController,
                            style: GoogleFonts.aBeeZee(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                            decoration: const InputDecoration(
                              border: UnderlineInputBorder(),
                              hintStyle: TextStyle(color: Colors.white),
                              labelStyle: TextStyle(
                                  color: Colors.white54, fontSize: 18),
                              labelText: 'Favourite category',
                            ),
                          ),
                        ),
                        IconButton(
                          icon: Icon(
                            categoryController.text.isNotEmpty
                                ? Icons.check
                                : Icons.clear,
                            color: Colors.white,
                          ),
                          onPressed: categoryController.text.isEmpty
                              ? null
                              : () {
                                  context
                                      .read<UserCubit>()
                                      .updateName(categoryController.text);
                                },
                        ),
                      ],
                    ),
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
      ),
    );
  }
}

// class TextFieldWidget extends StatelessWidget {
//   const TextFieldWidget({
//     required this.name,
//     required this.controller,
//     super.key,
//   });

//   final String name;
//   final TextEditingController? controller;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.symmetric(horizontal: 24),
//       child: Row(
//         children: [
//           Expanded(
//             child: TextField(
//               controller: controller,
//               style: GoogleFonts.aBeeZee(
//                 fontSize: 18,
//                 color: Colors.white,
//                 fontWeight: FontWeight.bold,
//               ),
//               decoration: InputDecoration(
//                 border: const UnderlineInputBorder(),
//                 hintStyle: const TextStyle(color: Colors.white),
//                 labelStyle:
//                     const TextStyle(color: Colors.white54, fontSize: 18),
//                 labelText: name,
//               ),
//             ),
//           ),
//           IconButton(
//             icon: Icon(
//               controller!.text.isNotEmpty ? Icons.check : Icons.clear,
//               color: Colors.white,
//             ),
//             onPressed: controller!.text.isEmpty
//                 ? null
//                 : () {
//                     context.read<UserCubit>().updateData();
//                   },
//           ),
//         ],
//       ),
//     );
//   }
// }
