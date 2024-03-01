import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_quest/app/domain/models/ranking_model/ranking_model.dart';
import 'package:quiz_quest/app/features/home_page/ranking_widget/cubit/ranking_cubit.dart';
import 'package:quiz_quest/app/features/home_page/ranking_widget/user_records_widgets/first_user_record.dart';
import 'package:quiz_quest/app/features/home_page/ranking_widget/user_records_widgets/second_user_record.dart';
import 'package:quiz_quest/app/injection_container.dart';

class RankingWidget extends StatefulWidget {
  const RankingWidget({
    required this.user,
    super.key,
  });

  final User? user;

  @override
  State<RankingWidget> createState() => RankingWidgetState();
}

class RankingWidgetState extends State<RankingWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<RankingCubit>()..getRankingData(),
      child: BlocBuilder<RankingCubit, RankingState>(
        builder: (context, state) {
          List<RankingModel>? modifiedList = state.rankingModel?.toList();

          if (modifiedList != null && modifiedList.isNotEmpty) {
            modifiedList.sort((a, b) => b.totalPoints.compareTo(a.totalPoints));
          }
          // state.rankingModel
          //     ?.sort((a, b) => b.totalPoints.compareTo(a.totalPoints));
          return Scaffold(
            extendBodyBehindAppBar: true,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              iconTheme: const IconThemeData(color: Colors.white),
            ),
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
              child: SafeArea(
                child: Column(
                  children: [
                    Text(
                      'Ranking 🏆',
                      style: GoogleFonts.aBeeZee(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 30),
                    Expanded(
                      child: ListView.builder(
                        itemCount: state.rankingModel?.length ?? 0,
                        itemBuilder: (context, index) {
                          final userRecord = modifiedList?[index];
                          final userId = modifiedList?[index].userID;

                          if (userRecord != null) {
                            final userName = userRecord.userName;
                            return userId == widget.user!.uid
                                ? UserRecord2(
                                    id: (index + 1).toString(),
                                    user:
                                        userName.isNotEmpty ? userName : '???',
                                    points: userRecord.totalPoints,
                                  )
                                : UserRecord(
                                    id: (index + 1).toString(),
                                    user:
                                        userName.isNotEmpty ? userName : '???',
                                    points: userRecord.totalPoints,
                                  );
                          } else {
                            return const SizedBox();
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
