import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:quiz_quest/app/data/data_sources/user_data_source/user_data_source.dart';
import 'package:quiz_quest/app/domain/models/user_model/user_model.dart';

class UserRepository {
  UserRepository(this.userDataSource);

  final UserDataSource userDataSource;

  Stream<UserModel> getUserModel() {
    final data = userDataSource.getUserData();

    return data.map((doc) {
      return UserModel(
        name: doc['name'],
        surname: doc['surname'],
        imageURL: doc['image_url'],
        gender: doc['gender'],
        favouriteCategory: doc['favourite_categories'],
      );
    });
  }

  Future<void> setEmptyAccount() async {
    return userDataSource.setEmptyAccount();
  }

  Future<void> setEmptyPoints() async {
    return userDataSource.setEmptyPoints();
  }

  Future<void> updateName(String name) async {
    return userDataSource.updateName(name: name);
  }

  Future<void> updateSurname(String surname) async {
    return userDataSource.updateSurname(surname: surname);
  }

  Future<void> updateGender(String gender) async {
    return userDataSource.updateGender(gender: gender);
  }

  Future<void> updateImage(String imageURL) async {
    return userDataSource.updateImage(imageURL: imageURL);
  }

  Future<void> updateCategory(String category) async {
    return userDataSource.updateCategory(category: category);
  }
}
