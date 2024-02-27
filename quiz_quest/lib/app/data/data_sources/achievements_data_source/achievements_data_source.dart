import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@injectable
class AchievementDataSource {
  Future<void> setFalseAchievements() async {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('User is not logged in');
    }
    await FirebaseFirestore.instance.collection('achievements').doc(userID).set(
      {
        'user_id': userID,
        'is_first_achievement_ready': false,
        'is_second_achievement_ready': false,
        'is_third_achievement_ready': false,
        'is_fourth_achievement_ready': false,
        'is_fifth_achievement_ready': false,
        'is_sixth_achievement_ready': false,
      },
    );
  }
}
