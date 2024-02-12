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

  Future<void> updateEasyGeographyPoints(int newEasyGeographyPoints) async {
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

    final easyGeographyPoints = userData['geography_easy_points'] ?? 0;

    final newGeographyPoints = newEasyGeographyPoints * 10;

    if (newGeographyPoints > easyGeographyPoints) {
      await FirebaseFirestore.instance
          .collection('users')
          .doc(userID)
          .collection('points')
          .doc(userID)
          .update({
        'geography_easy_points': newGeographyPoints,
      });
    }
  }

  Future<void> updateMediumGeographyPoints(int newMediumGeographyPoints) async {
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

    final mediumGeographyPoints = userData['geography_medium_points'] ?? 0;

    final newGeographyPoints = newMediumGeographyPoints * 10;

    if (newGeographyPoints > mediumGeographyPoints) {
      await FirebaseFirestore.instance
          .collection('users')
          .doc(userID)
          .collection('points')
          .doc(userID)
          .update({
        'geography_medium_points': newGeographyPoints,
      });
    }
  }

  Future<void> updateHardGeographyPoints(int newHardGeographyPoints) async {
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

    final hardGeographyPoints = userData['geography_hard_points'] ?? 0;

    final newGeographyPoints = newHardGeographyPoints * 10;

    if (newGeographyPoints > hardGeographyPoints) {
      await FirebaseFirestore.instance
          .collection('users')
          .doc(userID)
          .collection('points')
          .doc(userID)
          .update({
        'geography_hard_points': newGeographyPoints,
      });
    }
  }

  Future<void> updateEasyHistoryPoints(int newEasyHistoryPoints) async {
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

    final easyHistoryPoints = userData['history_easy_points'] ?? 0;

    final newHistoryPoints = newEasyHistoryPoints * 10;

    if (newHistoryPoints > easyHistoryPoints) {
      await FirebaseFirestore.instance
          .collection('users')
          .doc(userID)
          .collection('points')
          .doc(userID)
          .update({
        'history_easy_points': newHistoryPoints,
      });
    }
  }

  Future<void> updateMediumHistoryPoints(int newMediumHistoryPoints) async {
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

    final mediumHistoryPoints = userData['history_medium_points'] ?? 0;

    final newHistoryPoints = newMediumHistoryPoints * 10;

    if (newHistoryPoints > mediumHistoryPoints) {
      await FirebaseFirestore.instance
          .collection('users')
          .doc(userID)
          .collection('points')
          .doc(userID)
          .update({
        'history_medium_points': newHistoryPoints,
      });
    }
  }

  Future<void> updateHardHistoryPoints(int newHardHistoryPoints) async {
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

    final hardHistoryPoints = userData['history_hard_points'] ?? 0;

    final newHistoryPoints = newHardHistoryPoints * 10;

    if (newHistoryPoints > hardHistoryPoints) {
      await FirebaseFirestore.instance
          .collection('users')
          .doc(userID)
          .collection('points')
          .doc(userID)
          .update({
        'history_hard_points': newHistoryPoints,
      });
    }
  }

  Future<void> updateEasyMusicPoints(int newEasyMusicPoints) async {
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

    final easyMusicPoints = userData['music_easy_points'] ?? 0;

    final newMusicPoints = newEasyMusicPoints * 10;

    if (newMusicPoints > easyMusicPoints) {
      await FirebaseFirestore.instance
          .collection('users')
          .doc(userID)
          .collection('points')
          .doc(userID)
          .update({
        'music_easy_points': newMusicPoints,
      });
    }
  }

  Future<void> updateMediumMusicPoints(int newMediumMusicPoints) async {
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

    final mediumMusicPoints = userData['music_medium_points'] ?? 0;

    final newMusicPoints = newMediumMusicPoints * 10;

    if (newMusicPoints > mediumMusicPoints) {
      await FirebaseFirestore.instance
          .collection('users')
          .doc(userID)
          .collection('points')
          .doc(userID)
          .update({
        'music_medium_points': newMusicPoints,
      });
    }
  }

  Future<void> updateHardMusicPoints(int newHardMusicPoints) async {
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

    final hardMusicPoints = userData['music_hard_points'] ?? 0;

    final newMusicPoints = newHardMusicPoints * 10;

    if (newMusicPoints > hardMusicPoints) {
      await FirebaseFirestore.instance
          .collection('users')
          .doc(userID)
          .collection('points')
          .doc(userID)
          .update({
        'music_hard_points': newMusicPoints,
      });
    }
  }

  Future<void> updateEasyNaturePoints(int newEasyNaturePoints) async {
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

    final easyNaturePoints = userData['nature_easy_points'] ?? 0;

    final newNaturePoints = newEasyNaturePoints * 10;

    if (newNaturePoints > easyNaturePoints) {
      await FirebaseFirestore.instance
          .collection('users')
          .doc(userID)
          .collection('points')
          .doc(userID)
          .update({
        'nature_easy_points': newNaturePoints,
      });
    }
  }

  Future<void> updateMediumNaturePoints(int newMediumNaturePoints) async {
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

    final mediumNaturePoints = userData['nature_medium_points'] ?? 0;

    final newNaturePoints = newMediumNaturePoints * 10;

    if (newNaturePoints > mediumNaturePoints) {
      await FirebaseFirestore.instance
          .collection('users')
          .doc(userID)
          .collection('points')
          .doc(userID)
          .update({
        'nature_medium_points': newNaturePoints,
      });
    }
  }

  Future<void> updateHardNaturePoints(int newHardNaturePoints) async {
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

    final hardNaturePoints = userData['nature_hard_points'] ?? 0;

    final newNaturePoints = newHardNaturePoints * 10;

    if (newNaturePoints > hardNaturePoints) {
      await FirebaseFirestore.instance
          .collection('users')
          .doc(userID)
          .collection('points')
          .doc(userID)
          .update({
        'nature_hard_points': newNaturePoints,
      });
    }
  }

  Future<void> updateEasySportPoints(int newEasySportPoints) async {
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

    final easySportPoints = userData['sport_easy_points'] ?? 0;

    final newSportPoints = newEasySportPoints * 10;

    if (newSportPoints > easySportPoints) {
      await FirebaseFirestore.instance
          .collection('users')
          .doc(userID)
          .collection('points')
          .doc(userID)
          .update({
        'sport_easy_points': newSportPoints,
      });
    }
  }

  Future<void> updateMediumSportPoints(int newMediumSportPoints) async {
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

    final mediumSportPoints = userData['sport_medium_points'] ?? 0;

    final newSportPoints = newMediumSportPoints * 10;

    if (newSportPoints > mediumSportPoints) {
      await FirebaseFirestore.instance
          .collection('users')
          .doc(userID)
          .collection('points')
          .doc(userID)
          .update({
        'sport_medium_points': newSportPoints,
      });
    }
  }

  Future<void> updateHardSportPoints(int newHardSportPoints) async {
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

    final hardSportPoints = userData['sport_hard_points'] ?? 0;

    final newSportPoints = newHardSportPoints * 10;

    if (newSportPoints > hardSportPoints) {
      await FirebaseFirestore.instance
          .collection('users')
          .doc(userID)
          .collection('points')
          .doc(userID)
          .update({
        'sport_hard_points': newSportPoints,
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
