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
        .snapshots()
        .map((querySnapshot) {
      if (querySnapshot.docs.isNotEmpty) {
        return querySnapshot.docs.first.data();
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
        .add(
      {
        'name': '',
        'surname': '',
        'gender': '',
        'favourite_categories': '',
        'image_url': '',
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
        .doc()
        .collection('user_profile')
        .doc()
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
        .doc()
        .collection('user_profile')
        .doc()
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
        .doc()
        .collection('user_profile')
        .doc()
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
        .doc()
        .collection('user_profile')
        .doc()
        .set(
      {
        'name': category,
      },
      SetOptions(merge: true),
    );
  }
}
