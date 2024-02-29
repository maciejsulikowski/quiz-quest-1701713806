import 'package:flutter/material.dart';
import 'package:quiz_quest/app/features/home_page/details_quiz_widget/details_quiz_widget.dart';


class QuizzCategoryWidget extends StatelessWidget {
  const QuizzCategoryWidget({
    required this.easyCategory,
    required this.mediumCategory,
    required this.hardCategory,
    required this.name,
    required this.image,
    required this.categoryPoints,
    required this.nextPage,
    super.key,
  });

  final String name;
  final String image;
  final dynamic easyCategory;
  final dynamic mediumCategory;
  final dynamic hardCategory;
  final int categoryPoints;
  final Widget nextPage;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => nextPage,
            settings: RouteSettings(
              arguments: [
                easyCategory,
                mediumCategory,
                hardCategory,
              ],
            )));
      },
      child: DetailsQuizzWidget(
        categoryPoints: categoryPoints,
        name: name,
        image: image,
      ),
    );
  }
}
