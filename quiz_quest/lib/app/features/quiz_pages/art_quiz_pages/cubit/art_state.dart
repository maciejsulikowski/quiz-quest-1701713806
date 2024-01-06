part of 'art_cubit.dart';


class ArtState {
  ArtState({
    this.artQuizModel,
    this.isLoading = false,
    this.status = Status.initial,
    this.error,
  });

  final bool isLoading;
  final Status status;
  final String? error;
  final ArtQuizModel? artQuizModel;
}
