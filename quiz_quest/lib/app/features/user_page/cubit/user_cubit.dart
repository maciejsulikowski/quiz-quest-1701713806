import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';
import 'package:quiz_quest/app/core/enums.dart';
import 'package:quiz_quest/app/domain/models/user_model/user_model.dart';

part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit()
      : super(
          UserState(),
        );

  StreamSubscription? streamSubscription;

  Future<void> start() async {
    emit(UserState(
      status: Status.loading,
    ));

    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('User is not logged in');
    }

    streamSubscription = FirebaseFirestore.instance
        .collection('users')
        .doc('GpK87jk9z79ktZ9m0r64')
        .snapshots()
        .map(
          (data) => UserModel(
            name: data['name'] ?? '',
            surname: data['surname'] ?? '',
            imageURL: data['image_url'] ?? '',
            gender: data['gender'] ?? '',
            favouriteCategory: data['favourite_category'] ?? '',
          ),
        )
        .listen((user) {
      emit(UserState(
        userModel: user,
        status: Status.success,
      ));
    })
      ..onError((error) {
        emit(
          UserState(
            status: Status.error,
            errorMessage: error.toString(),
          ),
        );
      });
  }

  @override
  Future<void> close() {
    streamSubscription?.cancel();
    return super.close();
  }
}
