part of 'home_cubit.dart';

class HomeState {
  HomeState({
    this.cateogriesModel,
    this.status = Status.initial,
    this.errorMessage,
  });

  final CategoriesModel? cateogriesModel;
  final Status status;
  final String? errorMessage;
}
