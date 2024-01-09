part of 'animals_cubit.dart';

class AnimalsState {
  AnimalsState({
    this.animalsQuizModel,
    this.list,
    this.isLoading = false,
    this.status = Status.initial,
    this.error,
  });

  final bool isLoading;
  final Status status;
  final String? error;
  final AnimalsQuizModel? animalsQuizModel;
  final List<dynamic>? list;
}
