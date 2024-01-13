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
        .doc('mwdbdXH5FRVKcAnqBvKc69Jc6r83')
        .collection('user_profile')
        .doc('gK0p0tJlQndpwyfVGjZm')
        .snapshots()
        .map((querySnapshot) {
      if (querySnapshot.exists) {
        final data = querySnapshot.data() ?? {};
        return data;
      } else {
        return {};
      }
    });
  }
}
