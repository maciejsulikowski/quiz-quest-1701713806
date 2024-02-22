import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@injectable
class RankingDataSource {
  Stream<List<Map<String, dynamic>>> getRankingData() {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('User is not logged in');
    }

    return FirebaseFirestore.instance
        .collection('history')
        .snapshots()
        .map((querySnapshot) {
      final rankingData = <Map<String, dynamic>>[];
      for (var doc in querySnapshot.docs) {
        final data = doc.data();
        data['id'] = doc.id;
        rankingData.add(data);
      }
      return rankingData;
    });
  }

  Future<void> setEmptyRankingPoints() async {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('User is not logged in');
    }
    await FirebaseFirestore.instance.collection('history').doc(userID).set(
      {
        'user_id': userID,
        'user_name': '',
        'films_easy_points': 0,
        'films_medium_points': 0,
        'films_hard_points': 0,
        'games_easy_points': 0,
        'games_medium_points': 0,
        'games_hard_points': 0,
        'geography_easy_points': 0,
        'geography_medium_points': 0,
        'geography_hard_points': 0,
        'history_easy_points': 0,
        'history_medium_points': 0,
        'history_hard_points': 0,
        'music_easy_points': 0,
        'music_medium_points': 0,
        'music_hard_points': 0,
        'nature_easy_points': 0,
        'nature_medium_points': 0,
        'nature_hard_points': 0,
        'sport_easy_points': 0,
        'sport_medium_points': 0,
        'sport_hard_points': 0,
        'tv_easy_points': 0,
        'tv_medium_points': 0,
        'tv_hard_points': 0,
        'general_easy_points': 0,
        'general_medium_points': 0,
        'general_hard_points': 0,
      },
    );
  }

  Future<void> updateEasyFilmRankingPoints(int newEasyFilmPoints) async {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('User is not logged in');
    }
    final userData = await FirebaseFirestore.instance
        .collection('history')
        .doc(userID)
        .get();

    final easyFilmsPoints = userData['films_easy_points'] ?? 0;

    final newEasyPoints = newEasyFilmPoints * 10;

    if (newEasyPoints > easyFilmsPoints) {
      await FirebaseFirestore.instance
          .collection('history')
          .doc(userID)
          .update({
        'films_easy_points': newEasyPoints,
      });
    }
  }

  Future<void> updateMediumFilmRankingPoints(int newMediumFilmPoints) async {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('User is not logged in');
    }
    final userData = await FirebaseFirestore.instance
        .collection('history')
        .doc(userID)
        .get();

    final mediumFilmsPoints = userData['films_medium_points'] ?? 0;

    final newMediumPoints = newMediumFilmPoints * 20;

    if (newMediumPoints > mediumFilmsPoints) {
      await FirebaseFirestore.instance
          .collection('history')
          .doc(userID)
          .update({
        'films_medium_points': newMediumPoints,
      });
    }
  }

  Future<void> updateHardFilmRankingPoints(int newHardFilmPoints) async {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('User is not logged in');
    }
    final userData = await FirebaseFirestore.instance
        .collection('history')
        .doc(userID)
        .get();

    final hardFilmsPoints = userData['films_hard_points'] ?? 0;

    final newHardPoints = newHardFilmPoints * 30;

    if (newHardPoints > hardFilmsPoints) {
      await FirebaseFirestore.instance
          .collection('history')
          .doc(userID)
          .update({
        'films_hard_points': newHardPoints,
      });
    }
  }

  Future<void> updateEasyGamesRankingPoints(int newEasyGamesPoints) async {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('User is not logged in');
    }
    final userData = await FirebaseFirestore.instance
        .collection('history')
        .doc(userID)
        .get();

    final easyGamesPoints = userData['games_easy_points'] ?? 0;

    final newGamesPoints = newEasyGamesPoints * 10;

    if (newGamesPoints > easyGamesPoints) {
      await FirebaseFirestore.instance
          .collection('history')
          .doc(userID)
          .update({
        'games_easy_points': newGamesPoints,
      });
    }
  }

  Future<void> updateMediumGamesRankingPoints(int newMediumGamesPoints) async {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('User is not logged in');
    }
    final userData = await FirebaseFirestore.instance
        .collection('history')
        .doc(userID)
        .get();

    final mediumGamesPoints = userData['games_medium_points'] ?? 0;

    final newGamesPoints = newMediumGamesPoints * 20;

    if (newGamesPoints > mediumGamesPoints) {
      await FirebaseFirestore.instance
          .collection('history')
          .doc(userID)
          .update({
        'games_medium_points': newGamesPoints,
      });
    }
  }

  Future<void> updateHardGamesRankingPoints(int newHardGamesPoints) async {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('User is not logged in');
    }
    final userData = await FirebaseFirestore.instance
        .collection('history')
        .doc(userID)
        .get();

    final hardGamesPoints = userData['games_hard_points'] ?? 0;

    final newGamesPoints = newHardGamesPoints * 30;

    if (newGamesPoints > hardGamesPoints) {
      await FirebaseFirestore.instance
          .collection('history')
          .doc(userID)
          .update({
        'games_hard_points': newGamesPoints,
      });
    }
  }

  Future<void> updateEasyGeographyRankingPoints(int newEasyGeographyPoints) async {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('User is not logged in');
    }
    final userData = await FirebaseFirestore.instance
        .collection('history')
        .doc(userID)
        .get();

    final easyGeographyPoints = userData['geography_easy_points'] ?? 0;

    final newGeographyPoints = newEasyGeographyPoints * 10;

    if (newGeographyPoints > easyGeographyPoints) {
      await FirebaseFirestore.instance
          .collection('history')
          .doc(userID)
          .update({
        'geography_easy_points': newGeographyPoints,
      });
    }
  }

  Future<void> updateMediumGeographyRankingPoints(int newMediumGeographyPoints) async {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('User is not logged in');
    }
    final userData = await FirebaseFirestore.instance
        .collection('history')
        .doc(userID)
        .get();

    final mediumGeographyPoints = userData['geography_medium_points'] ?? 0;

    final newGeographyPoints = newMediumGeographyPoints * 20;

    if (newGeographyPoints > mediumGeographyPoints) {
      await FirebaseFirestore.instance
          .collection('history')
          .doc(userID)
          .update({
        'geography_medium_points': newGeographyPoints,
      });
    }
  }

  Future<void> updateHardGeographyRankingPoints(int newHardGeographyPoints) async {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('User is not logged in');
    }
    final userData = await FirebaseFirestore.instance
        .collection('history')
        .doc(userID)
        .get();

    final hardGeographyPoints = userData['geography_hard_points'] ?? 0;

    final newGeographyPoints = newHardGeographyPoints * 30;

    if (newGeographyPoints > hardGeographyPoints) {
      await FirebaseFirestore.instance
          .collection('history')
          .doc(userID)
          .update({
        'geography_hard_points': newGeographyPoints,
      });
    }
  }

  Future<void> updateEasyHistoryRankingPoints(int newEasyHistoryPoints) async {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('User is not logged in');
    }
    final userData = await FirebaseFirestore.instance
        .collection('history')
        .doc(userID)
        .get();

    final easyHistoryPoints = userData['history_easy_points'] ?? 0;

    final newHistoryPoints = newEasyHistoryPoints * 10;

    if (newHistoryPoints > easyHistoryPoints) {
      await FirebaseFirestore.instance
          .collection('history')
          .doc(userID)
          .update({
        'history_easy_points': newHistoryPoints,
      });
    }
  }

  Future<void> updateMediumHistoryRankingPoints(int newMediumHistoryPoints) async {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('User is not logged in');
    }
    final userData = await FirebaseFirestore.instance
        .collection('history')
        .doc(userID)
        .get();

    final mediumHistoryPoints = userData['history_medium_points'] ?? 0;

    final newHistoryPoints = newMediumHistoryPoints * 20;

    if (newHistoryPoints > mediumHistoryPoints) {
      await FirebaseFirestore.instance
          .collection('history')
          .doc(userID)
          .update({
        'history_medium_points': newHistoryPoints,
      });
    }
  }

  Future<void> updateHardHistoryRankingPoints(int newHardHistoryPoints) async {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('User is not logged in');
    }
    final userData = await FirebaseFirestore.instance
        .collection('history')
        .doc(userID)
        .get();

    final hardHistoryPoints = userData['history_hard_points'] ?? 0;

    final newHistoryPoints = newHardHistoryPoints * 30;

    if (newHistoryPoints > hardHistoryPoints) {
      await FirebaseFirestore.instance
          .collection('history')
          .doc(userID)
          .update({
        'history_hard_points': newHistoryPoints,
      });
    }
  }

  Future<void> updateEasyMusicRankingPoints(int newEasyMusicPoints) async {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('User is not logged in');
    }
    final userData = await FirebaseFirestore.instance
        .collection('history')
        .doc(userID)
        .get();

    final easyMusicPoints = userData['music_easy_points'] ?? 0;

    final newMusicPoints = newEasyMusicPoints * 10;

    if (newMusicPoints > easyMusicPoints) {
      await FirebaseFirestore.instance
          .collection('history')
          .doc(userID)
          .update({
        'music_easy_points': newMusicPoints,
      });
    }
  }

  Future<void> updateMediumMusicRankingPoints(int newMediumMusicPoints) async {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('User is not logged in');
    }
    final userData = await FirebaseFirestore.instance
        .collection('history')
        .doc(userID)
        .get();

    final mediumMusicPoints = userData['music_medium_points'] ?? 0;

    final newMusicPoints = newMediumMusicPoints * 20;

    if (newMusicPoints > mediumMusicPoints) {
      await FirebaseFirestore.instance
          .collection('history')
          .doc(userID)
          .update({
        'music_medium_points': newMusicPoints,
      });
    }
  }

  Future<void> updateHardMusicRankingPoints(int newHardMusicPoints) async {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('User is not logged in');
    }
    final userData = await FirebaseFirestore.instance
        .collection('history')
        .doc(userID)
        .get();

    final hardMusicPoints = userData['music_hard_points'] ?? 0;

    final newMusicPoints = newHardMusicPoints * 30;

    if (newMusicPoints > hardMusicPoints) {
      await FirebaseFirestore.instance
          .collection('history')
          .doc(userID)
          .update({
        'music_hard_points': newMusicPoints,
      });
    }
  }

  Future<void> updateEasyNatureRankingPoints(int newEasyNaturePoints) async {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('User is not logged in');
    }
    final userData = await FirebaseFirestore.instance
        .collection('history')
        .doc(userID)
        .get();

    final easyNaturePoints = userData['nature_easy_points'] ?? 0;

    final newNaturePoints = newEasyNaturePoints * 10;

    if (newNaturePoints > easyNaturePoints) {
      await FirebaseFirestore.instance
          .collection('history')
          .doc(userID)
          .update({
        'nature_easy_points': newNaturePoints,
      });
    }
  }

  Future<void> updateMediumNatureRankingPoints(int newMediumNaturePoints) async {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('User is not logged in');
    }
    final userData = await FirebaseFirestore.instance
        .collection('history')
        .doc(userID)
        .get();

    final mediumNaturePoints = userData['nature_medium_points'] ?? 0;

    final newNaturePoints = newMediumNaturePoints * 20;

    if (newNaturePoints > mediumNaturePoints) {
      await FirebaseFirestore.instance
          .collection('history')
          .doc(userID)
          .update({
        'nature_medium_points': newNaturePoints,
      });
    }
  }

  Future<void> updateHardNatureRankingPoints(int newHardNaturePoints) async {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('User is not logged in');
    }
    final userData = await FirebaseFirestore.instance
        .collection('history')
        .doc(userID)
        .get();

    final hardNaturePoints = userData['nature_hard_points'] ?? 0;

    final newNaturePoints = newHardNaturePoints * 30;

    if (newNaturePoints > hardNaturePoints) {
      await FirebaseFirestore.instance
          .collection('history')
          .doc(userID)
          .update({
        'nature_hard_points': newNaturePoints,
      });
    }
  }

  Future<void> updateEasySportRankingPoints(int newEasySportPoints) async {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('User is not logged in');
    }
    final userData = await FirebaseFirestore.instance
        .collection('history')
        .doc(userID)
        .get();

    final easySportPoints = userData['sport_easy_points'] ?? 0;

    final newSportPoints = newEasySportPoints * 10;

    if (newSportPoints > easySportPoints) {
      await FirebaseFirestore.instance
          .collection('history')
          .doc(userID)
          .update({
        'sport_easy_points': newSportPoints,
      });
    }
  }

  Future<void> updateMediumSportRankingPoints(int newMediumSportPoints) async {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('User is not logged in');
    }
    final userData = await FirebaseFirestore.instance
        .collection('history')
        .doc(userID)
        .get();

    final mediumSportPoints = userData['sport_medium_points'] ?? 0;

    final newSportPoints = newMediumSportPoints * 20;

    if (newSportPoints > mediumSportPoints) {
      await FirebaseFirestore.instance
          .collection('history')
          .doc(userID)
          .update({
        'sport_medium_points': newSportPoints,
      });
    }
  }

  Future<void> updateHardSportRankingPoints(int newHardSportPoints) async {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('User is not logged in');
    }
    final userData = await FirebaseFirestore.instance
        .collection('history')
        .doc(userID)
        .get();

    final hardSportPoints = userData['sport_hard_points'] ?? 0;

    final newSportPoints = newHardSportPoints * 30;

    if (newSportPoints > hardSportPoints) {
      await FirebaseFirestore.instance
          .collection('history')
          .doc(userID)
          .update({
        'sport_hard_points': newSportPoints,
      });
    }
  }

  Future<void> updateEasyTvRankingPoints(int newEasyTvPoints) async {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('User is not logged in');
    }
    final userData = await FirebaseFirestore.instance
        .collection('history')
        .doc(userID)
        .get();

    final easyTvPoints = userData['tv_easy_points'] ?? 0;

    final newTvPoints = newEasyTvPoints * 10;

    if (newTvPoints > easyTvPoints) {
      await FirebaseFirestore.instance
          .collection('history')
          .doc(userID)
          .update({
        'tv_easy_points': newTvPoints,
      });
    }
  }

  Future<void> updateMediumTvRankingPoints(int newMediumTvPoints) async {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('User is not logged in');
    }
    final userData = await FirebaseFirestore.instance
        .collection('history')
        .doc(userID)
        .get();

    final mediumTvPoints = userData['tv_medium_points'] ?? 0;

    final newTvPoints = newMediumTvPoints * 20;

    if (newTvPoints > mediumTvPoints) {
      await FirebaseFirestore.instance
          .collection('history')
          .doc(userID)
          .update({
        'tv_medium_points': newTvPoints,
      });
    }
  }

  Future<void> updateHardTvRankingPoints(int newHardTvPoints) async {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('User is not logged in');
    }
    final userData = await FirebaseFirestore.instance
        .collection('history')
        .doc(userID)
        .get();

    final hardTvPoints = userData['tv_hard_points'] ?? 0;

    final newTvPoints = newHardTvPoints * 30;

    if (newTvPoints > hardTvPoints) {
      await FirebaseFirestore.instance
          .collection('history')
          .doc(userID)
          .update({
        'tv_hard_points': newTvPoints,
      });
    }
  }

  Future<void> updateEasyGeneralRankingPoints(int newEasyGeneralPoints) async {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('User is not logged in');
    }
    final userData = await FirebaseFirestore.instance
        .collection('history')
        .doc(userID)
        .get();

    final easyGeneralPoints = userData['general_easy_points'] ?? 0;

    final newGeneralPoints = newEasyGeneralPoints * 10;

    if (newGeneralPoints > easyGeneralPoints) {
      await FirebaseFirestore.instance
          .collection('history')
          .doc(userID)
          .update({
        'general_easy_points': newGeneralPoints,
      });
    }
  }

  Future<void> updateMediumGeneralRankingPoints(int newMediumGeneralPoints) async {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('User is not logged in');
    }
    final userData = await FirebaseFirestore.instance
        .collection('history')
        .doc(userID)
        .get();

    final mediumGeneralPoints = userData['general_medium_points'] ?? 0;

    final newGeneralPoints = newMediumGeneralPoints * 20;

    if (newGeneralPoints > mediumGeneralPoints) {
      await FirebaseFirestore.instance
          .collection('history')
          .doc(userID)
          .update({
        'general_medium_points': newGeneralPoints,
      });
    }
  }

  Future<void> updateHardGeneralRankingPoints(int newHardGeneralPoints) async {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('User is not logged in');
    }
    final userData = await FirebaseFirestore.instance
        .collection('history')
        .doc(userID)
        .get();

    final hardGeneralPoints = userData['general_hard_points'] ?? 0;

    final newGeneralPoints = newHardGeneralPoints * 30;

    if (newGeneralPoints > hardGeneralPoints) {
      await FirebaseFirestore.instance
          .collection('history')
          .doc(userID)
          .update({
        'general_hard_points': newGeneralPoints,
      });
    }
  }
}
