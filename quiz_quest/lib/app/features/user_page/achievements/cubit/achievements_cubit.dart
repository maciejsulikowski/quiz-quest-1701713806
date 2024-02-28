import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'achievements_state.dart';

class AchievementsCubit extends Cubit<AchievementsState> {
  AchievementsCubit() : super(AchievementsState());
}
