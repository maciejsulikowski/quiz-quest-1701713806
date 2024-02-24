class UserModel {
  UserModel({
    required this.name,
    required this.surname,
    required this.imageURL,
    required this.gender,
    required this.favouriteCategory,
    required this.isUserNew,
  });

  final String name;
  final String surname;
  final String imageURL;
  final String gender;
  final String favouriteCategory;
  bool isUserNew;
}
