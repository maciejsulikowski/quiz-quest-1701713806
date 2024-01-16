import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:quiz_quest/app/cubit/root_cubit.dart';
import 'package:quiz_quest/app/data/data_sources/user_data_source/user_data_source.dart';
import 'package:quiz_quest/app/domain/models/user_model/user_model.dart';
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

var emailController = TextEditingController();

class _UserAccountState extends State<UserAccount> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserCubit(UserRepository(UserDataSource()))..start(),
      child: BlocListener<UserCubit, UserState>(
        listener: (context, state) {
          if (state.isSaved) {
            context.read<UserCubit>().start();
          }
        },
        child: BlocBuilder<UserCubit, UserState>(
          builder: (context, state) {
            // nameController = TextEditingController(text: userModel?.name ?? '');
            // surnameController =
            //     TextEditingController(text: userModel?.surname ?? '');
            emailController =
                TextEditingController(text: widget.user?.email ?? '');
            // genderController =
            //     TextEditingController(text: userModel?.gender ?? '');
            // categoryController =
            //     TextEditingController(text: userModel?.favouriteCategory ?? '');
            return UserWidget(
              userModel: state.userModel,
            );
          },
        ),
      ),
    );
  }
}

class UserWidget extends StatefulWidget {
  const UserWidget({
    required this.userModel,
    super.key,
  });

  final UserModel? userModel;

  @override
  State<UserWidget> createState() => _UserWidgetState();
}

class _UserWidgetState extends State<UserWidget> {
  late TextEditingController nameController;
  late TextEditingController surnameController;
  late TextEditingController genderController;
  late TextEditingController categoryController;
  late IconData icon;
  late Color iconColor;

  @override
  void initState() {
    nameController = TextEditingController();
    surnameController = TextEditingController();
    genderController = TextEditingController();
    categoryController = TextEditingController();
    icon = Icons.edit;
    iconColor = Colors.yellow[400]!;
    nameController.addListener(onNameChanged);
    surnameController.addListener(onSurnameChanged);
    genderController.addListener(onGenderChanged);
    categoryController.addListener(onCategoryChanged);
    super.initState();
  }

  void onNamePressed() {
    if (nameController.text.isNotEmpty) {
      context.read<UserCubit>().updateName(nameController.text);
    } else {
      _showSnackbar('error');
    }
  }

  void onSurnamePressed() {
    if (surnameController.text.isNotEmpty) {
      context.read<UserCubit>().updateSurname(surnameController.text);
    } else {
      _showSnackbar('error');
    }
  }

  void onGenderPressed() {
    if (genderController.text.isNotEmpty) {
      context.read<UserCubit>().updateGender(genderController.text);
    } else {
      _showSnackbar('error');
    }
  }

  void onCategoryPressed() {
    if (categoryController.text.isNotEmpty) {
      context.read<UserCubit>().updateCategory(categoryController.text);
    } else {
      _showSnackbar('error');
    }
  }

  void _showSnackbar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating,
        backgroundColor: Colors.green,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        content: Padding(
          padding: const EdgeInsets.all(8),
          child: Row(
            children: [
              const Icon(Icons.error, color: Colors.white),
              const SizedBox(width: 8),
              Text(
                message,
                style: const TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onNameChanged() {
    setState(() {
      if (nameController.text.isEmpty) {
        icon = Icons.edit;
        iconColor;
      } else {
        icon = Icons.check;
        iconColor;
      }
    });
  }

  void onSurnameChanged() {
    setState(() {
      if (surnameController.text.isEmpty) {
        icon = Icons.edit;
        iconColor;
      } else {
        icon = Icons.check;
        iconColor;
      }
    });
  }

  void onGenderChanged() {
    setState(() {
      if (genderController.text.isEmpty) {
        icon = Icons.edit;
        iconColor;
      } else {
        icon = Icons.check;
        iconColor;
      }
    });
  }

  void onCategoryChanged() {
    setState(() {
      if (categoryController.text.isEmpty) {
        icon = Icons.edit;
        iconColor;
      } else {
        icon = Icons.check;
        iconColor;
      }
    });
  }

  @override
  void didUpdateWidget(UserWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.userModel != oldWidget.userModel) {
      nameController.text = widget.userModel?.name ?? '';
      surnameController.text = widget.userModel?.surname ?? '';
      genderController.text = widget.userModel?.gender ?? '';
      categoryController.text = widget.userModel?.favouriteCategory ?? '';
    }
  }

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
                    decoration: InputDecoration(
                      border: const UnderlineInputBorder(),
                      hintStyle: const TextStyle(color: Colors.white),
                      labelStyle:
                          const TextStyle(color: Colors.white54, fontSize: 18),
                      labelText: 'Name',
                      suffixIcon: IconButton(
                        icon: Icon(
                          icon,
                          color: iconColor,
                        ),
                        onPressed: icon == Icons.check ? onNamePressed : null,
                      ),
                    ),
                  ),
                ),
                // IconButton(
                //   icon: Icon(
                //     nameController.text.isNotEmpty ? Icons.check : Icons.clear,
                //     color: Colors.white,
                //   ),
                //   onPressed: nameController.text.isEmpty
                //       ? null
                //       : () {
                //           context
                //               .read<UserCubit>()
                //               .updateName(nameController.text);
                //         },
                // ),
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
                    decoration: InputDecoration(
                      border: const UnderlineInputBorder(),
                      hintStyle: const TextStyle(color: Colors.white),
                      labelStyle:
                          const TextStyle(color: Colors.white54, fontSize: 18),
                      labelText: 'Surname',
                      suffixIcon: IconButton(
                        icon: Icon(
                          icon,
                          color: iconColor,
                        ),
                        onPressed:
                            icon == Icons.check ? onSurnamePressed : null,
                      ),
                    ),
                  ),
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
                    decoration: InputDecoration(
                      border: const UnderlineInputBorder(),
                      hintStyle: const TextStyle(color: Colors.white),
                      labelStyle:
                          const TextStyle(color: Colors.white54, fontSize: 18),
                      labelText: 'Gender',
                      suffixIcon: IconButton(
                        icon: Icon(
                          icon,
                          color: iconColor,
                        ),
                        onPressed: icon == Icons.check ? onGenderPressed : null,
                      ),
                    ),
                  ),
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
                    decoration: InputDecoration(
                      border: const UnderlineInputBorder(),
                      hintStyle: const TextStyle(color: Colors.white),
                      labelStyle:
                          const TextStyle(color: Colors.white54, fontSize: 18),
                      labelText: 'Email',
                      suffixIcon: IconButton(
                        icon: Icon(
                          icon,
                          color: iconColor,
                        ),
                        onPressed: null,
                      ),
                    ),
                  ),
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
                    decoration: InputDecoration(
                      border: const UnderlineInputBorder(),
                      hintStyle: const TextStyle(color: Colors.white),
                      labelStyle:
                          const TextStyle(color: Colors.white54, fontSize: 18),
                      labelText: 'Favourite category',
                      suffixIcon: IconButton(
                        icon: Icon(
                          icon,
                          color: iconColor,
                        ),
                        onPressed:
                            icon == Icons.check ? onCategoryPressed : null,
                      ),
                    ),
                  ),
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
                      MaterialPageRoute(builder: (context) => LoginPage()),
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
