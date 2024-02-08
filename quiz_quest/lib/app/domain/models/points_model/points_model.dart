
class PointsModel {
  PointsModel({
    required this.totalPoints,
    required this.categoryPoints,
  });

  final int totalPoints;
  final Map<int, Map<String, int>> categoryPoints;
}
