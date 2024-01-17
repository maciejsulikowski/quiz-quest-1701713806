part of 'user_cubit.dart';

@immutable
class UserState {
  UserState({
    this.userModel,
    this.status = Status.initial,
    this.errorMessage = '',
    this.isSaved = false,
  });

  final UserModel? userModel;
  final Status status;
  final String? errorMessage;
  final bool isSaved;
}
