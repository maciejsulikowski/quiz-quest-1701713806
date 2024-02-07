import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserDataSource {
  Stream<Map<String, dynamic>> getUserData() {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('User is not logged in');
    }

    return FirebaseFirestore.instance
        .collection('users')
        .doc(userID)
        .collection('user_profile')
        .doc(userID)
        .snapshots()
        .map((docSnapshot) {
      if (docSnapshot.exists) {
        //docSnapshot.id;
        final data = docSnapshot.data() ?? {};
        return data;
      } else {
        return {};
      }
    });
  }

  Stream<Map<String, dynamic>> getPointsData() {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('User is not logged in');
    }

    return FirebaseFirestore.instance
        .collection('users')
        .doc(userID)
        .collection('points')
        .doc(userID)
        .snapshots()
        .map((docSnapshot) {
      if (docSnapshot.exists) {
        //docSnapshot.id;
        final data = docSnapshot.data() ?? {};
        return data;
      } else {
        return {};
      }
    });
  }

  Future<void> setEmptyAccount() async {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('User is not logged in');
    }
    await FirebaseFirestore.instance
        .collection('users')
        .doc(userID)
        .collection('user_profile')
        .doc(userID)
        .set(
      {
        'name': '',
        'surname': '',
        'gender': '',
        'favourite_categories': '',
        'image_url': '',
      },
    );
  }

  Future<void> setEmptyPoints() async {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('User is not logged in');
    }
    await FirebaseFirestore.instance
        .collection('users')
        .doc(userID)
        .collection('points')
        .doc(userID)
        .set(
      {
        'total_points': 0,
        'total_films_points': 0,
        'films_easy_points': 0,
        'films_medium_points': 0,
        'films_hard_points': 0,
        'total_games_points': 0,
        'games_easy_points': 0,
        'games_medium_points': 0,
        'games_hard_points': 0,
        'total_geography_points': 0,
        'geography_easy_points': 0,
        'geography_medium_points': 0,
        'geography_hard_points': 0,
        'total_history_points': 0,
        'history_easy_points': 0,
        'history_medium_points': 0,
        'history_hard_points': 0,
        'total_music_points': 0,
        'music_easy_points': 0,
        'music_medium_points': 0,
        'music_hard_points': 0,
        'total_nature_points': 0,
        'nature_easy_points': 0,
        'nature_medium_points': 0,
        'nature_hard_points': 0,
        'total_sports_points': 0,
        'sport_easy_points': 0,
        'sport_medium_points': 0,
        'sport_hard_points': 0,
        'total_tv_points': 0,
        'tv_easy_points': 0,
        'tv_medium_points': 0,
        'tv_hard_points': 0,
      },
    );
  }

  Future<void> addTotalFilmPoints(int secondTotalFilmPoints) async {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('User is not logged in');
    }
    final userData = await FirebaseFirestore.instance
        .collection('users')
        .doc(userID)
        .collection('points')
        .doc(userID)
        .get();

    final firstTotalFilmsPoints = userData['total_films_points'] ?? 0;
    if (secondTotalFilmPoints > firstTotalFilmsPoints) {
      final result = (secondTotalFilmPoints - firstTotalFilmsPoints) * 10;
      final totalPoints = userData['total_points'] ?? 0;

      final updateTotalFilmsPoints = firstTotalFilmsPoints + result;
      final updateTotalPoints = updateTotalFilmsPoints + totalPoints;

      await FirebaseFirestore.instance
          .collection('users')
          .doc(userID)
          .collection('points')
          .doc(userID)
          .update({
        'total_points': updateTotalPoints,
        'total_films_points': updateTotalFilmsPoints,
      });
    }
  }

  Future<void> addEasyFilmPoints(int easyFilmPoints) async {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('User is not logged in');
    }
    await FirebaseFirestore.instance
        .collection('users')
        .doc(userID)
        .collection('points')
        .doc(userID)
        .set(
      {
        'total_points': 0 + easyFilmPoints,
        'total_films_points': 0,
        'films_easy_points': 0 + easyFilmPoints,
        'films_medium_points': 0,
        'films_hard_points': 0,
      },
    );
  }

  Future<void> updateName({
    required String? name,
  }) async {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('User is not logged in');
    }
    await FirebaseFirestore.instance
        .collection('users')
        .doc(userID)
        .collection('user_profile')
        .doc(userID)
        .set(
      {
        'name': name,
      },
      SetOptions(merge: true),
    );
  }

  Future<void> updateSurname({
    required String? surname,
  }) async {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('User is not logged in');
    }
    await FirebaseFirestore.instance
        .collection('users')
        .doc(userID)
        .collection('user_profile')
        .doc(userID)
        .set(
      {
        'surname': surname,
      },
      SetOptions(merge: true),
    );
  }

  Future<void> updateGender({
    required String? gender,
  }) async {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('User is not logged in');
    }
    await FirebaseFirestore.instance
        .collection('users')
        .doc(userID)
        .collection('user_profile')
        .doc(userID)
        .set(
      {
        'gender': gender,
      },
      SetOptions(merge: true),
    );
  }

  Future<void> updateCategory({
    required String? category,
  }) async {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('User is not logged in');
    }
    await FirebaseFirestore.instance
        .collection('users')
        .doc(userID)
        .collection('user_profile')
        .doc(userID)
        .set(
      {
        'favourite_categories': category,
      },
      SetOptions(merge: true),
    );
  }

  Future<void> updateImage({
    required String? imageURL,
  }) async {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('User is not logged in');
    }
    await FirebaseFirestore.instance
        .collection('users')
        .doc(userID)
        .collection('user_profile')
        .doc(userID)
        .set(
      {
        'image_url': imageURL,
      },
      SetOptions(merge: true),
    );
  }
}
