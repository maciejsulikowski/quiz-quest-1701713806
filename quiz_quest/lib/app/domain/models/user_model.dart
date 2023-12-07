class UserModel {
  UserModel({
    required this.id,
    required this.name,
    required this.surname,
    required this.imageURL,
    required this.gender,
  });

  final int id;
  final String name;
  final String surname;
  final String imageURL;
  final String gender;
}
