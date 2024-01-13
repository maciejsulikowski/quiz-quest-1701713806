import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserDataSource {
  Stream<Map<String, dynamic>>? getUserData() {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('User is not logged in');
    }

    FirebaseFirestore.instance
        .collection('users')
        .doc()
        .collection('user_profile')
        .snapshots()
        .map((data) {
      return data;
    });
  }
}
