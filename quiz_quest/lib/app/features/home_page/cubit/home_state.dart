part of 'home_cubit.dart';

class HomeState {
  HomeState({
    this.cateogriesModel = const [],
    this.isLoading = false,
    this.errorMessage,
  });

  final List<CategoriesModel> cateogriesModel;
  final bool isLoading;
  final String? errorMessage;
}
