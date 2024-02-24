part of 'geography_cubit.dart';

// class GeographyState {
//   GeographyState({
//     this.geographyQuizModel,
//     this.isLoading = false,
//     this.status = Status.initial,
//     this.error,
//   });

//   final bool isLoading;
//   final Status status;
//   final String? error;
//   final GeographyQuizModel? geographyQuizModel;
// }


@freezed
class GeographyState with _$GeographyState {
  factory GeographyState({
    GeographyQuizModel? geographyQuizModel,
    @Default(Status.initial) Status status,
    @Default(false) bool? isLoading,
    String? error,
  }) = _GeographyState;
}
