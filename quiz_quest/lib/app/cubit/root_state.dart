part of 'root_cubit.dart';

@immutable
class RootState {
  const RootState({
    this.user,
    required this.status,
    this.errorMessage,
  });

  final User? user;
  final Status status;
  final String? errorMessage;
}
