import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_quest/app/core/enums.dart';
import 'package:quiz_quest/app/features/home_page/cubit/home_cubit.dart';
import 'package:quiz_quest/app/features/home_page/information_widget/information_widget.dart';
import 'package:quiz_quest/app/features/home_page/list_of_categories/list_of_categories.dart';
import 'package:quiz_quest/app/features/home_page/quiz_category_widget/quiz_category_widget.dart';
import 'package:quiz_quest/app/features/home_page/quiz_widget/quiz_widgets/first_row_achievement_widget.dart';
import 'package:quiz_quest/app/features/home_page/quiz_widget/quiz_widgets/hello_name_widget.dart';
import 'package:quiz_quest/app/features/home_page/quiz_widget/quiz_widgets/lets_play_widget.dart';
import 'package:quiz_quest/app/features/home_page/quiz_widget/quiz_widgets/second_row_achievement_widget.dart';
import 'package:quiz_quest/app/features/home_page/quiz_widget/quiz_widgets/total_points_widget.dart';
import 'package:quiz_quest/app/features/user_page/achievements/cubit/achievements_cubit.dart';
import 'package:quiz_quest/app/features/user_page/cubit/user_cubit.dart';

import 'package:quiz_quest/app/injection_container.dart';
import 'package:super_tooltip/super_tooltip.dart';

class QuizzWidget extends StatefulWidget {
  const QuizzWidget({
    this.user,
    this.userName,
    super.key,
  });

  final User? user;
  final String? userName;

  @override
  State<QuizzWidget> createState() => _QuizzWidgetState();
}

class _QuizzWidgetState extends State<QuizzWidget> {
  final controller = TextEditingController();
  late List<dynamic> categoryList;
  final toolController = SuperTooltipController();
  bool isFirstAchievementCompleted = false;
  bool isSecondAchievementCompleted = false;
  bool isThirdAchievementCompleted = false;
  bool isFourthAchievementCompleted = false;
  bool isFifthAchievementCompleted = false;
  bool isSixthAchievementCompleted = false;
  bool isAchievementSnackBarDisplayed = false;

  @override
  void initState() {
    categoryList = list;

    super.initState();
  }

  void filter(String categoryWord) {
    setState(() {
      categoryList = list
          .where((category) => category['name']
              .toLowerCase()
              .contains(categoryWord.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<HomeCubit>()
            ..getAchievements()
            ..getPointsData(),
        ),
        BlocProvider(
          create: (context) => getIt<UserCubit>()..start(),
        ),
      ],
      child: BlocListener<HomeCubit, HomeState>(
        listener: (context, state) {
          var achievementModel = state.achievementModel;

          var firstAchievement =
              state.achievementModel?.isFirstAchievementReady;
          var secondAchievement =
              state.achievementModel?.isSecondAchievementReady;
          var thirdAchievement =
              state.achievementModel?.isThirdAchievementReady;
          var fourthAchievement =
              state.achievementModel?.isFourthAchievementReady;
          var fifthAchievement =
              state.achievementModel?.isFifthAchievementReady;
          var sixthAchievement =
              state.achievementModel?.isSixthAchievementReady;

          if (firstAchievement == false && state.totalPoints >= 100) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                behavior: SnackBarBehavior.floating,
                backgroundColor: Colors.green,
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
                          'First Achievement! Great and keep going!',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
            context.read<HomeCubit>().changeFirstAchievement();
          } else if (secondAchievement == false && state.totalPoints >= 500) {
            if (achievementModel != null) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  behavior: SnackBarBehavior.floating,
                  backgroundColor: Colors.green,
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
                            'Another Achievement! Great and keep going!',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }
            context.read<HomeCubit>().changeSecondAchievement();
          } else if (thirdAchievement == false && state.totalPoints >= 1000) {
            if (achievementModel != null) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  behavior: SnackBarBehavior.floating,
                  backgroundColor: Colors.green,
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
                            'Another Achievement! Great and keep going!',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }
            context.read<HomeCubit>().changeThirdAchievement();
          } else if (fourthAchievement == false && state.totalPoints >= 2000) {
            if (achievementModel != null) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  behavior: SnackBarBehavior.floating,
                  backgroundColor: Colors.green,
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
                            'Another Achievement! Great and keep going!',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }
            context.read<HomeCubit>().changeFourthAchievement();
          } else if (fifthAchievement == false && state.totalPoints >= 5000) {
            if (achievementModel != null) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  behavior: SnackBarBehavior.floating,
                  backgroundColor: Colors.green,
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
                            'Another Achievement! Great and keep going!',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }
            context.read<HomeCubit>().changeFifthAchievement();
          } else if (sixthAchievement == false && state.totalPoints >= 10000) {
            if (achievementModel != null) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  behavior: SnackBarBehavior.floating,
                  backgroundColor: Colors.green,
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
                            'Another Achievement! Great and keep going!',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }
            context.read<HomeCubit>().changeSixthAchievement();
          }
        },
        child: BlocBuilder<HomeCubit, HomeState>(
          builder: (context, state) {
            final allPoints = state.totalPoints;

            if (state.status == Status.loading) {
              return const Center(child: CircularProgressIndicator());
            }

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
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        HelloNameWidget(widget: widget),
                        InformationWidget(toolController: toolController),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  LetsPlayWidget(widget: widget),
                  const SizedBox(
                    height: 10,
                  ),
                  const SizedBox(height: 30),
                  TotalPointsWidget(allPoints: allPoints),
                  const SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '''Achievements:''',
                          style: GoogleFonts.aBeeZee(
                              fontSize: 24,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        FirstRowAchievementsWidget(
                            totalPoints: allPoints,
                            isFirstAchievementCompleted:
                                isFirstAchievementCompleted,
                            isSecondAchievementCompleted:
                                isSecondAchievementCompleted,
                            isThirdAchievementCompleted:
                                isThirdAchievementCompleted),
                        const SizedBox(
                          height: 10,
                        ),
                        SecondRowAchievementWidget(
                            totalPoints: allPoints,
                            isFourthAchievementCompleted:
                                isFourthAchievementCompleted,
                            isFifthAchievementCompleted:
                                isFifthAchievementCompleted,
                            isSixthAchievementCompleted:
                                isSixthAchievementCompleted),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
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
                      child: TextField(
                        onChanged: (value) => filter(value),
                        controller: controller,
                        style: GoogleFonts.aBeeZee(
                            fontSize: 16, color: Colors.white),
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.white54,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          contentPadding: const EdgeInsets.all(10),
                          hintText: 'Search category',
                          hintStyle: GoogleFonts.aBeeZee(
                              fontSize: 16,
                              color: Colors.white54,
                              fontWeight: FontWeight.bold),
                          suffixIcon: const Icon(
                            Icons.search,
                            color: Colors.white54,
                          ),
                          hintMaxLines: 1,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 20,
                      ),
                      itemCount: categoryList.length,
                      shrinkWrap: true,
                      physics: const ClampingScrollPhysics(),
                      itemBuilder: (context, index) {
                        return QuizzCategoryWidget(
                          name: categoryList[index]['name'],
                          image: categoryList[index]['image'],
                          easyCategory:
                              state.categoryPoints[categoryList[index]['id']]
                                      ['easy'] ??
                                  0,
                          mediumCategory:
                              state.categoryPoints[categoryList[index]['id']]
                                      ['medium'] ??
                                  0,
                          hardCategory:
                              state.categoryPoints[categoryList[index]['id']]
                                      ['hard'] ??
                                  0,
                          categoryPoints:
                              state.categoryPoints[categoryList[index]['id']]
                                      ['total'] ??
                                  0,
                          nextPage: state.list[index]['page'],
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
