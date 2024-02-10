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

  Future<void> updateEasyFilmPoints(int newEasyFilmPoints) async {
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

    final easyFilmsPoints = userData['films_easy_points'] ?? 0;

    final newEasyPoints = newEasyFilmPoints * 10;

    if (newEasyPoints > easyFilmsPoints) {
      await FirebaseFirestore.instance
          .collection('users')
          .doc(userID)
          .collection('points')
          .doc(userID)
          .update({
        'films_easy_points': newEasyPoints,
      });
    }
  }

  Future<void> updateMediumFilmPoints(int newMediumFilmPoints) async {
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

    final mediumFilmsPoints = userData['films_medium_points'] ?? 0;

    final newMediumPoints = newMediumFilmPoints * 10;

    if (newMediumPoints > mediumFilmsPoints) {
      await FirebaseFirestore.instance
          .collection('users')
          .doc(userID)
          .collection('points')
          .doc(userID)
          .update({
        'films_medium_points': newMediumPoints,
      });
    }
  }

  Future<void> updateHardFilmPoints(int newHardFilmPoints) async {
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

    final hardFilmsPoints = userData['films_hard_points'] ?? 0;

    final newHardPoints = newHardFilmPoints * 10;

    if (newHardPoints > hardFilmsPoints) {
      await FirebaseFirestore.instance
          .collection('users')
          .doc(userID)
          .collection('points')
          .doc(userID)
          .update({
        'films_hard_points': newHardPoints,
      });
    }
  }

  Future<void> updateEasyGamesPoints(int newEasyGamesPoints) async {
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

    final easyGamesPoints = userData['games_easy_points'] ?? 0;

    final newGamesPoints = newEasyGamesPoints * 10;

    if (newGamesPoints > easyGamesPoints) {
      await FirebaseFirestore.instance
          .collection('users')
          .doc(userID)
          .collection('points')
          .doc(userID)
          .update({
        'games_easy_points': newGamesPoints,
      });
    }
  }

  Future<void> updateMediumGamesPoints(int newMediumGamesPoints) async {
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

    final mediumGamesPoints = userData['games_medium_points'] ?? 0;

    final newGamesPoints = newMediumGamesPoints * 10;

    if (newGamesPoints > mediumGamesPoints) {
      await FirebaseFirestore.instance
          .collection('users')
          .doc(userID)
          .collection('points')
          .doc(userID)
          .update({
        'games_medium_points': newGamesPoints,
      });
    }
  }

  Future<void> updateHardGamesPoints(int newHardGamesPoints) async {
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

    final hardGamesPoints = userData['games_hard_points'] ?? 0;

    final newGamesPoints = newHardGamesPoints * 10;

    if (newGamesPoints > hardGamesPoints) {
      await FirebaseFirestore.instance
          .collection('users')
          .doc(userID)
          .collection('points')
          .doc(userID)
          .update({
        'games_hard_points': newGamesPoints,
      });
    }
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
