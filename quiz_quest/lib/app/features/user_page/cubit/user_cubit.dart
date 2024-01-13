import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';
import 'package:quiz_quest/app/core/enums.dart';
import 'package:quiz_quest/app/domain/models/user_model/user_model.dart';
import 'package:quiz_quest/app/domain/repositories/user_repository/user_repository.dart';

part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit(this.userRepository)
      : super(
          UserState(),
        );

  final UserRepository userRepository;

  StreamSubscription? streamSubscription;

  Future<void> start() async {
    emit(UserState(
      status: Status.loading,
    ));

    streamSubscription = userRepository.getUserModel().listen((user) {
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

  Future<void> updateName({
    required String? name,
  }) async {
    emit(UserState(
      status: Status.loading,
    ));

    try {
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
    } catch (error) {
      emit(
        UserState(
          status: Status.error,
          errorMessage: error.toString(),
        ),
      );
    }
  }

  Future<void> updateSurname({
    required String? surname,
  }) async {
    emit(UserState(
      status: Status.loading,
    ));

    try {
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
    } catch (error) {
      emit(
        UserState(
          status: Status.error,
          errorMessage: error.toString(),
        ),
      );
    }
  }

  Future<void> updateGender({
    required String? gender,
  }) async {
    emit(UserState(
      status: Status.loading,
    ));

    try {
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
    } catch (error) {
      emit(
        UserState(
          status: Status.error,
          errorMessage: error.toString(),
        ),
      );
    }
  }

  Future<void> updateCategory({
    required String? category,
  }) async {
    emit(UserState(
      status: Status.loading,
    ));

    try {
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
    } catch (error) {
      emit(
        UserState(
          status: Status.error,
          errorMessage: error.toString(),
        ),
      );
    }
  }

  @override
  Future<void> close() {
    streamSubscription?.cancel();
    return super.close();
  }
}
