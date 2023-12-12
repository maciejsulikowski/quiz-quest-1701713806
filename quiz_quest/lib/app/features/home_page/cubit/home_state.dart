part of 'home_cubit.dart';

class HomeState {
  HomeState({
    this.cateogriesModel,
    this.status = Status.initial,
    this.errorMessage,
  });

  final QuizModel? cateogriesModel;
  final Status status;
  final String? errorMessage;
}
