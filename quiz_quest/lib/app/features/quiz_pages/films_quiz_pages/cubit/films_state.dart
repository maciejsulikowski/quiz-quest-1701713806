part of 'films_cubit.dart';

class FilmsState {
  FilmsState({
    this.filmsQuizModel,
    this.list,
    this.isLoading = false,
    this.status = Status.initial,
    this.error,
  });

  final bool isLoading;
  final Status status;
  final String? error;
  final FilmsQuizModel? filmsQuizModel;
  final List<dynamic>? list;
}
