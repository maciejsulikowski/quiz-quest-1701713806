import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@injectable
class AchievementDataSource {
  Stream<Map<String, dynamic>> getAchievementsData() {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('User is not logged in');
    }

    return FirebaseFirestore.instance
        .collection('achievements')
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

  Future<void> changeFirstAchievement() async {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('User is not logged in');
    }
    await FirebaseFirestore.instance.collection('achievements').doc(userID).set(
      {
        'is_first_achievement_ready': true,
      },
      SetOptions(merge: true),
    );
  }

  Future<void> changeSecondAchievement() async {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('User is not logged in');
    }
    await FirebaseFirestore.instance.collection('achievements').doc(userID).set(
      {
        'is_second_achievement_ready': true,
      },
      SetOptions(merge: true),
    );
  }

  Future<void> changeThirdAchievement() async {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('User is not logged in');
    }
    await FirebaseFirestore.instance.collection('achievements').doc(userID).set(
      {
        'is_third_achievement_ready': true,
      },
      SetOptions(merge: true),
    );
  }

  Future<void> changeFourthAchievement() async {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('User is not logged in');
    }
    await FirebaseFirestore.instance.collection('achievements').doc(userID).set(
      {
        'is_fourth_achievement_ready': true,
      },
      SetOptions(merge: true),
    );
  }

  Future<void> changeFifthAchievement() async {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('User is not logged in');
    }
    await FirebaseFirestore.instance.collection('achievements').doc(userID).set(
      {
        'is_fifth_achievement_ready': true,
      },
      SetOptions(merge: true),
    );
  }

  Future<void> changeSixthAchievement() async {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('User is not logged in');
    }
    await FirebaseFirestore.instance.collection('achievements').doc(userID).set(
      {
        'is_sixth_achievement_ready': true,
      },
      SetOptions(merge: true),
    );
  }
}
