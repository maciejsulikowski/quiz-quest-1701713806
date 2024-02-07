import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:quiz_quest/app/data/data_sources/user_data_source/user_data_source.dart';
import 'package:quiz_quest/app/domain/models/points_model/points_model.dart';
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

  Stream<PointsModel> getPointsModel() {
    final data = userDataSource.getUserData();

    return data.map((doc) {
      return PointsModel(
          totalPoints: doc['total_points'] ?? 0,
          categoryPoints: {
            'films': {
              'easy': doc['films_easy_points'] ?? 0,
              'medium': doc['films_medium_points'] ?? 0,
              'hard': doc['films_hard_points'] ?? 0,
            },
            'games': {
              'easy': doc['games_easy_points'] ?? 0,
              'medium': doc['games_medium_points'] ?? 0,
              'hard': doc['games_hard_points'] ?? 0,
            },
            'geography': {
              'easy': doc['geography_easy_points'] ?? 0,
              'medium': doc['geography_medium_points'] ?? 0,
              'hard': doc['geography_hard_points'] ?? 0,
            },

            'history': {
              'easy': doc['history_easy_points'] ?? 0,
              'medium': doc['history_medium_points'] ?? 0,
              'hard': doc['history_hard_points'] ?? 0,
            },
            'nature': {
              'easy': doc['nature_easy_points'] ?? 0,
              'medium': doc['nature_medium_points'] ?? 0,
              'hard': doc['nature_hard_points'] ?? 0,
            },
            'tv': {
              'easy': doc['tv_easy_points'] ?? 0,
              'medium': doc['tv_medium_points'] ?? 0,
              'hard': doc['tv_hard_points'] ?? 0,
            },
            'sport': {
              'easy': doc['sport_easy_points'] ?? 0,
              'medium': doc['sport_medium_points'] ?? 0,
              'hard': doc['sport_hard_points'] ?? 0,
            },
            'music': {
              'easy': doc['music_easy_points'] ?? 0,
              'medium': doc['music_medium_points'] ?? 0,
              'hard': doc['music_hard_points'] ?? 0,
            },
          });
    });
  }

  Future<void> setEmptyAccount() async {
    return userDataSource.setEmptyAccount();
  }

  Future<void> setEmptyPoints() async {
    return userDataSource.setEmptyPoints();
  }

  Future<void> addTotalFilmsPoints(int totalFilmsPoints) async {
    return userDataSource.addTotalFilmPoints(totalFilmsPoints);
  }

  Future<void> addEasyFilmsPoints(int easyFilmsPoints) async {
    return userDataSource.addEasyFilmPoints(easyFilmsPoints);
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
