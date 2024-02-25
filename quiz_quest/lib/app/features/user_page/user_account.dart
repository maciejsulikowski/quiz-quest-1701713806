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

class UserWidget extends StatefulWidget {
  const UserWidget({
    required this.userModel,
    required this.user,
    super.key,
  });

  final UserModel? userModel;
  final User? user;

  @override
  State<UserWidget> createState() => _UserWidgetState();
}

class _UserWidgetState extends State<UserWidget> {
  late TextEditingController nameController;
  late TextEditingController surnameController;
  late TextEditingController genderController;
  late TextEditingController categoryController;
  late TextEditingController emailController;
  late TextEditingController imageController;
  late IconData icon;
  late Color iconColor;
  bool isLoading = false;
  static String imageURL = '';

  @override
  void initState() {
    emailController = TextEditingController(text: widget.user?.email ?? '');
    nameController = TextEditingController();
    surnameController = TextEditingController();
    genderController = TextEditingController();
    categoryController = TextEditingController();
    imageController = TextEditingController();
    icon = Icons.edit;
    iconColor = Colors.yellow[400]!;
    nameController.addListener(onTextChanged);
    surnameController.addListener(onTextChanged);
    genderController.addListener(onTextChanged);
    categoryController.addListener(onTextChanged);
    super.initState();
  }

  void onTextChanged() {
    setState(() {});
  }

  Future<void> onPressed(
      String text, Future<void> Function(String) onUpdate) async {
    if (text.isNotEmpty) {
      await onUpdate(text);
    } else {
      _showSnackbar('The field cannot be empty!');
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

  @override
  void didUpdateWidget(UserWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.userModel != oldWidget.userModel) {
      nameController.text = widget.userModel?.name ?? '';
      surnameController.text = widget.userModel?.surname ?? '';
      genderController.text = widget.userModel?.gender ?? '';
      categoryController.text = widget.userModel?.favouriteCategory ?? '';
      imageController.text = widget.userModel?.imageURL ?? '';
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
          InkWell(
            onTap: () async {
              ImagePicker imagePicker = ImagePicker();
              XFile? file =
                  await imagePicker.pickImage(source: ImageSource.gallery);

              if (file == null) return;

              String uniqueFileName =
                  DateTime.now().millisecondsSinceEpoch.toString();

              Reference referenceRoot = FirebaseStorage.instance.ref();
              Reference referenceDirImages = referenceRoot.child('images');

              Reference referenceImageToUpload =
                  referenceDirImages.child(uniqueFileName);

              try {
                setState(() {
                  isLoading = true;
                });
                await referenceImageToUpload.putFile(File(file.path));
                imageController.text = imageURL;
                imageURL = await referenceImageToUpload.getDownloadURL();
                setState(() {
                  isLoading = false;
                });
                context.read<UserCubit>().updateImage(imageURL);
              } catch (error) {
                setState(() {
                  isLoading = false;
                });
              }
            },
            child: Stack(
              alignment: Alignment.center,
              children: [
                CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.black,
                  backgroundImage: imageController.text.isNotEmpty
                      ? NetworkImage(imageController.text)
                      : null,
                  child: imageController.text.isEmpty
                      ? const Icon(
                          Icons.photo_camera,
                          color: Colors.grey,
                          size: 40,
                        )
                      : null,
                ),
                if (isLoading)
                  const CircleAvatar(
                    radius: 60,
                    backgroundColor: Colors.black,
                    child: CircularProgressIndicator(),
                  ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: Text(
              'Profile',
              style: GoogleFonts.aBeeZee(
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 10),
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
          ),
          buildTextField(
            nameController,
            'Name',
            (text) async {
              await context.read<UserCubit>().updateName(text);
              // ignore: use_build_context_synchronously
              await context.read<UserCubit>().updateRankingName(text);
            },
          ),
          buildTextField(
            surnameController,
            'Surname',
            (text) async {
              await context.read<UserCubit>().updateSurname(text);
            },
          ),
          buildTextField(
            genderController,
            'Gender',
            (text) async {
              await context.read<UserCubit>().updateGender(text);
            },
          ),
          emailTextField(),
          buildTextField(
            categoryController,
            'Favourite category',
            (text) async {
              await context.read<UserCubit>().updateCategory(text);
            },
          ),
          const SizedBox(
            height: 1,
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
          ),
        ],
      ),
    );
  }

  Widget emailTextField() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              onTap: () {
                _showSnackbar('This field cannot be edited!');
              },
              readOnly: true,
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
                  icon: const Icon(
                    Icons.check,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildTextField(
    TextEditingController controller,
    String label,
    Future<void> Function(String) onUpdate, {
    bool enableEditing = true,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: controller,
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
                labelText: label,
                suffixIcon: IconButton(
                  icon: Icon(
                    controller.text.isNotEmpty ? Icons.check : Icons.edit,
                    color: Colors.white,
                  ),
                  onPressed: enableEditing
                      ? () async {
                          await onPressed(controller.text, onUpdate);
                          _showSnackbar('Changes are saved succesfully');
                        }
                      : null,
                ),
              ),
              enabled: enableEditing,
            ),
          ),
        ],
      ),
    );
  }
}
