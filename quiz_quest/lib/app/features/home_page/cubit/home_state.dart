part of 'home_cubit.dart';

class HomeState {
  HomeState({
    this.results = const [],
    this.isLoading = false,
    this.errorMessage,
  });

  final List<CategoriesModel> results;
  final bool isLoading;
  final String? errorMessage;
}
