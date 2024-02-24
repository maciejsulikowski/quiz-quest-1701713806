part of 'user_cubit.dart';

// @immutable
// class UserState {
//   UserState({
//     this.userModel,
//     this.status = Status.initial,
//     this.errorMessage = '',
//     this.isSaved = false,
//   });

//   final UserModel? userModel;
//   final Status status;
//   final String? errorMessage;
//   final bool isSaved;
// }

@freezed
class UserState with _$UserState {
  factory UserState({
    UserModel? userModel,
    @Default(Status.initial) Status status,
    String? errorMessage,
    @Default(false) bool isSaved,
  }) = _UserState;
}
