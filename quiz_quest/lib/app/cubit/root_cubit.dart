import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:quiz_quest/app/core/enums.dart';
import 'package:quiz_quest/app/domain/repositories/achievement_repository/achievement_repository.dart';
import 'package:quiz_quest/app/domain/repositories/ranking_respository/ranking_repository.dart';
import 'package:quiz_quest/app/domain/repositories/user_repository/user_repository.dart';

part 'root_cubit.freezed.dart';
part 'root_state.dart';

@injectable
class RootCubit extends Cubit<RootState> {
  RootCubit(
      this.userRepository, this.rankingRepository, this.achievementRepository)
      : super(RootState(
          user: null,
          status: Status.loading,
          errorMessage: '',
        ));

  StreamSubscription? streamSubscription;
  UserRepository userRepository;
  RankingRepository rankingRepository;
  AchievementRepository achievementRepository;

  Future<void> start() async {
    emit(
      RootState(
        user: null,
        status: Status.loading,
        errorMessage: '',
      ),
    );

    streamSubscription =
        FirebaseAuth.instance.authStateChanges().listen((user) {
      emit(
        RootState(
          user: user,
          status: Status.success,
          errorMessage: '',
        ),
      );
    })
          ..onError((error) {
            emit(
              RootState(
                user: null,
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

  Future<void> signInAccount(String email, String password) async {
    emit(RootState(
      status: Status.loading,
    ));

    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      emit(
        RootState(
          status: Status.success,
        ),
      );
    } on FirebaseAuthException catch (e) {
      String errorMessage = '';
      switch (e.code) {
        case "invalid-email":
          errorMessage = 'Invalid email format.';
          break;
        case "user-not-found":
          errorMessage = 'No user found with the provided email address.';
          break;
        case "wrong-password":
          errorMessage = 'Incorrect password.';
          break;
        case "account-exists-with-different-credential":
          errorMessage = 'Account already exists with a different credential.';
          break;
        case "user-disabled":
          errorMessage = 'User is disabled.';
          break;
        default:
          errorMessage = 'Login error occurred. Try again.';
          break;
      }
      emit(RootState(
        errorMessage: errorMessage,
        status: Status.error,
      ));
    }
  }

  Future<void> createAccount(String email, String password) async {
    emit(RootState(
      status: Status.loading,
    ));

    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      await userRepository.setEmptyAccount();
      await userRepository.setEmptyPoints();
      await rankingRepository.setEmptyRankingPoints();
      await achievementRepository.setFalseAchievements();
      emit(
        RootState(
          status: Status.success,
        ),
      );
    } on FirebaseAuthException catch (e) {
      String errorMessage = '';
      switch (e.code) {
        case "invalid-email":
          errorMessage = 'Invalid email format.';
          break;

        case "email-already-in-use":
          errorMessage = 'An account with this email address already exists.';
          break;
        case "operation-not-allowed":
          errorMessage = 'Registration with this email address is not allowed.';
          break;
        case "weak-password":
          errorMessage =
              'The password is too weak and should be at least 6 characters.';
          break;
        default:
          errorMessage = 'An error occurred during registration. Try again.';
          break;
      }

      emit(RootState(
        status: Status.error,
        errorMessage: errorMessage,
      ));
    }
  }

  Future<void> signOut() async {
    await FirebaseAuth.instance.signOut();
  }

  Future<void> forgotPassword(String email) async {
    try {
      await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
      emit(RootState(
          status: Status.error, errorMessage: 'Password has been sent'));
    } on FirebaseAuthException catch (e) {
      String errorMessage = '';
      switch (e.code) {
        case "invalid-email":
          errorMessage = 'Invalid email format.';
          break;
        case "user-not-found":
          errorMessage = 'No user found with the provided email address.';
          break;
        case "operation-not-allowed":
          errorMessage = 'Registration with this email address is not allowed.';
          break;
        default:
          errorMessage = 'An error occurred during sending email. Try again.';
          break;
      }

      emit(RootState(
        status: Status.error,
        errorMessage: errorMessage,
      ));
    }
  }
}
