class CategoriesModel {
  CategoriesModel({
    required this.id,
    required this.difficult,
    required this.category,
    required this.question,
    required this.correctAnswer,
    required this.inCorrectAnswer,
  });

  final int id;
  final String difficult;
  final String category;
  final String question;
  final String correctAnswer;
  final String inCorrectAnswer;
}
