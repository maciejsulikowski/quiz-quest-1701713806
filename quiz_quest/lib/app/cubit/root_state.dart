part of 'root_cubit.dart';

@immutable
// class RootState {
//   RootState({
//     this.user,
//     required this.status,
//     this.errorMessage,
//     this.passwordMessage,
//   });

//   final User? user;
//   final Status status;
//   final String? errorMessage;
//   final String? passwordMessage;
// }

@freezed
class RootState with _$RootState {
  factory RootState({
    User? user,
    @Default(Status.initial) Status status,
    String? errorMessage,
    String? passwordMessage,
  }) = _RootState;
}
