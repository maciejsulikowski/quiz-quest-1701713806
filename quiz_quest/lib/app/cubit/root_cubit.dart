import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';
import 'package:quiz_quest/app/core/enums.dart';

part 'root_state.dart';

class RootCubit extends Cubit<RootState> {
  RootCubit()
      : super(const RootState(
          user: null,
          status: Status.loading,
          errorMessage: '',
        ));

  StreamSubscription? streamSubscription;

  Future<void> start() async {
    emit(
      const RootState(
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
    emit(const RootState(
      status: Status.loading,
    ));

    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      emit(
        const RootState(
          status: Status.success,
        ),
      );
    } on FirebaseAuthException catch (e) {
      String errorMessage = '';
      switch (e.code) {
        case "invalid-email":
          errorMessage = 'Niepoprawny format adresu email.';
          break;
        case "user-not-found":
          errorMessage = 'Brak użytkownika o podanym adresie email.';
          break;
        case "wrong-password":
          errorMessage = 'Niepoprawne hasło.';
          break;
        case "account-exists-with-different-credential":
          errorMessage = 'Konto już istnieje.';
          break;
        case "user-disabled":
          errorMessage = 'Użytkownik jest wyłączony.';
          break;
        default:
          errorMessage = 'Wystąpił błąd logowania.';
          break;
      }
      emit(RootState(
        errorMessage: errorMessage,
        status: Status.error,
      ));
    }
  }

  Future<void> createAccount(String email, String password) async {
    emit(const RootState(
      status: Status.loading,
    ));

    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      emit(
        const RootState(
          status: Status.success,
        ),
      );
    } on FirebaseAuthException catch (e) {
      String errorMessage = '';
      switch (e.code) {
        case "invalid-email":
          errorMessage = 'Niepoprawny format adresu email.';
          break;
        case "email-already-in-use":
          errorMessage = 'Konto z tym adresem email już istnieje.';
          break;
        case "operation-not-allowed":
          errorMessage = 'Rejestracja z tym adresem email jest wyłączona.';
          break;
        case "weak-password":
          errorMessage = 'Hasło jest zbyt słabe.';
          break;
        default:
          errorMessage = 'Wystąpił błąd podczas rejestracji.';
          break;
      }

      emit(RootState(
        status: Status.error,
        errorMessage: errorMessage,
      ));
    }
  }
}
