part of 'root_cubit.dart';

@immutable
class RootState {
   RootState({
    this.user,
    required this.status,
    this.errorMessage,
    this.passwordMessage,
  });

  final User? user;
  final Status status;
  String? errorMessage;
  final String? passwordMessage;
}
