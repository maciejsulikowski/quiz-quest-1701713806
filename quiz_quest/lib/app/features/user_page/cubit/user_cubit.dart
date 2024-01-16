import 'dart:async';

import 'package:bloc/bloc.dart';
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

  Future<void> updateName(
    String name,
  ) async {
    emit(UserState(
      status: Status.loading,
    ));

    try {
      await userRepository.updateName(name);
      emit(
        UserState(
          status: Status.success,
          isSaved: true,
        ),
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

  Future<void> updateSurname(
    String surname,
  ) async {
    emit(UserState(
      status: Status.loading,
    ));

    try {
      await userRepository.updateSurname(surname);
      emit(
        UserState(
          status: Status.success,
          isSaved: true,
        ),
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

  Future<void> updateGender(
    String gender,
  ) async {
    emit(UserState(
      status: Status.loading,
    ));

    try {
      await userRepository.updateGender(gender);
      emit(
        UserState(
          status: Status.success,
          isSaved: true,
        ),
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

  Future<void> updateCategory(
    String category,
  ) async {
    emit(UserState(
      status: Status.loading,
    ));

    try {
      await userRepository.updateCategory(category);
      emit(
        UserState(
          status: Status.success,
          isSaved: true,
        ),
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