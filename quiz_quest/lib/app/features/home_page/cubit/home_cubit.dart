import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:quiz_quest/app/core/enums.dart';
import 'package:quiz_quest/app/domain/models/films_model/films_quiz_model.dart';
import 'package:quiz_quest/app/domain/models/games_model/games_quiz_model.dart';
import 'package:quiz_quest/app/domain/models/geography_model/geography_quiz_model.dart';
import 'package:quiz_quest/app/domain/models/history_model/history_quiz_model.dart';
import 'package:quiz_quest/app/domain/models/music_model/music_quiz_model.dart';
import 'package:quiz_quest/app/domain/models/nature_model/nature_quiz_model.dart';
import 'package:quiz_quest/app/domain/models/sports_model/sports_quiz_model.dart';
import 'package:quiz_quest/app/domain/models/tv_model/tv_quiz_model.dart';
import 'package:quiz_quest/app/features/quiz_pages/nature_quiz_pages/cubit/nature_cubit.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeState());

  List list = [];

  Future<void> updateList(String value) async {
    emit(HomeState(status: Status.loading));
    final filteredCategory = list
        .where(
            (category) => category.toLowerCase().contains(value.toLowerCase()))
        .toList();
    emit(
      HomeState(
        status: Status.success,
        searchedList: filteredCategory,
      ),
    );
  }
}
