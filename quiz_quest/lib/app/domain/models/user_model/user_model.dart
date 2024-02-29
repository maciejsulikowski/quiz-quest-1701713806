// class UserModel {
//   UserModel({
//     required this.name,
//     required this.surname,
//     required this.imageURL,
//     required this.gender,
//     required this.favouriteCategory,
//     required this.isUserNew,
//   });

//   final String name;
//   final String surname;
//   final String imageURL;
//   final String gender;
//   final String favouriteCategory;
//   bool isUserNew;
// }

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';

@freezed
class UserModel with _$UserModel {
  const UserModel._();
  factory UserModel({
    required String name,
    required String surname,
    required String imageURL,
    required String gender,
    required String favouriteCategory,
    required bool isUserNew,
  }) = _UserModel;
}
