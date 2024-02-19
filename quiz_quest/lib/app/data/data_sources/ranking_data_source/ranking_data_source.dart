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
        .orderBy('points', descending: true)
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
}
