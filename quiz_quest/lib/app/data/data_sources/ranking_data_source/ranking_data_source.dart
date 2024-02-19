import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

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
}
