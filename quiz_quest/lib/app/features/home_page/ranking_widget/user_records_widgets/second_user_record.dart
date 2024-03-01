import 'package:flutter/material.dart';
import 'package:quiz_quest/app/features/home_page/ranking_widget/user_records_widgets/text_ranking.dart';

class UserRecord2 extends StatefulWidget {
  const UserRecord2({
    required this.id,
    required this.user,
    required this.points,
    super.key,
  });

  final String id;
  final String user;
  final int points;

  @override
  State<UserRecord2> createState() => _UserRecord2State();
}

class _UserRecord2State extends State<UserRecord2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber[700],
      margin: const EdgeInsets.symmetric(horizontal: 10),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Stack(
        children: [
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: TextRanking(
                    text: widget.id,
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: TextRanking(
                    text: widget.user,
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: TextRanking(
                    text: 'Points: ${widget.points}💎',
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
