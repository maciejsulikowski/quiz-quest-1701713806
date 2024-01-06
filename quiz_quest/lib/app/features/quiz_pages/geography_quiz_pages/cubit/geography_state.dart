part of 'geography_cubit.dart';

class GeographyState {
  GeographyState({
    this.geographyQuizModel,
    this.isLoading = false,
    this.status = Status.initial,
    this.error,
  });

  final bool isLoading;
  final Status status;
  final String? error;
  final GeographyQuizModel? geographyQuizModel;
}
