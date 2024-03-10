import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_quest/app/features/home_page/quiz_widget/quiz_widget.dart';
import 'package:quiz_quest/app/features/login_page/first_page_after_registration.dart';
import 'package:quiz_quest/app/features/user_page/cubit/user_cubit.dart';
import 'package:quiz_quest/app/features/user_page/user_account.dart';
import 'package:quiz_quest/app/injection_container.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    required this.user,
    super.key,
  });

  final User user;
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<UserCubit>()..start(),
      child: BlocListener<UserCubit, UserState>(
        listener: (context, state) {
          if (state.isSaved == true) {
            context.read<UserCubit>().start();
          }
        },
        child: BlocBuilder<UserCubit, UserState>(
          builder: (context, state) {
            return Scaffold(
              bottomNavigationBar:
                  state.userModel != null && state.userModel!.isUserNew == true
                      ? null
                      : CurvedNavigationBar(
                          backgroundColor: Colors.indigo,
                          onTap: (newIndex) {
                            setState(() {
                              currentIndex = newIndex;
                            });
                          },
                          items: const [
                              CurvedNavigationBarItem(
                                  child: Icon(
                                    Icons.quiz,
                                  ),
                                  label: 'Quiz'),
                              CurvedNavigationBarItem(
                                child: Icon(Icons.person),
                                label: 'My Account',
                              ),
                            ]),
              body: SafeArea(
                child: BlocBuilder<UserCubit, UserState>(
                  builder: (context, state) {
                    if (state.userModel != null &&
                        state.userModel!.isUserNew == true) {
                      return FirstPageAfterRegistration(
                        isNewUser: state.userModel!.isUserNew,
                        setUserOld: (value) {
                          setState(() {
                            state.userModel!.isUserNew == value;
                          });
                        },
                      );
                    } else {
                      if (currentIndex == 0) {
                        return QuizzWidget(
                          userName: state.userModel?.name ?? 'user',
                          user: widget.user,
                        );
                      }
                      return UserAccount(
                        user: widget.user,
                      );
                    }
                  },
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
