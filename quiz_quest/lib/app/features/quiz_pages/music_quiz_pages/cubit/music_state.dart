part of 'music_cubit.dart';

class MusicState {
  MusicState({
    this.musicQuizModel,
    this.isLoading = false,
    this.status = Status.initial,
    this.error,
  });

  final bool isLoading;
  final Status status;
  final String? error;
  final MusicQuizModel? musicQuizModel;
}
