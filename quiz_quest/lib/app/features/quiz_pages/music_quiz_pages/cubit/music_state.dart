part of 'music_cubit.dart';

// class MusicState {
//   MusicState({
//     this.musicQuizModel,
//     this.isLoading = false,
//     this.status = Status.initial,
//     this.error,
//   });

//   final bool isLoading;
//   final Status status;
//   final String? error;
//   final MusicQuizModel? musicQuizModel;
// }


@freezed
class MusicState with _$MusicState {
  factory MusicState({
    MusicQuizModel? musicQuizModel,
    @Default(Status.initial) Status status,
    @Default(false) bool? isLoading,
    String? error,
  }) = _MusicState;
}