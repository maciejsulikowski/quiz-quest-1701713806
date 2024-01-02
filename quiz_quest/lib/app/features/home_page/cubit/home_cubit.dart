import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:quiz_quest/app/core/enums.dart';
import 'package:quiz_quest/app/domain/models/animals_model/animals_quiz_model.dart';
import 'package:quiz_quest/app/domain/models/art_model/art_quiz_model.dart';
import 'package:quiz_quest/app/domain/models/computer_science_model/computer_science_quiz_model.dart';
import 'package:quiz_quest/app/domain/models/geography_model/geography_quiz_model.dart';
import 'package:quiz_quest/app/domain/models/sports_model/sports_quiz_model.dart';
import 'package:quiz_quest/app/domain/repositories/animals_repository/animals_repository.dart';
import 'package:quiz_quest/app/domain/repositories/art_repostitory/art_repository.dart';
import 'package:quiz_quest/app/domain/repositories/category_repository.dart';
import 'package:quiz_quest/app/domain/repositories/computer_science_repository/computer_science_repository.dart';
import 'package:quiz_quest/app/domain/repositories/geography_repository/geography_repository.dart';
import 'package:quiz_quest/app/domain/repositories/sports_repository/sports_repository.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(
    this.sportsRepository,
    this.animalsRepository,
    this.artRepository,
    this.computerScienceRepository,
    this.geographyRepository,
  ) : super(HomeState());

  final SportsRepository sportsRepository;
  final AnimalsRepository animalsRepository;
  final ArtRepository artRepository;
  final ComputerScienceRepository computerScienceRepository;
  final GeographyRepository geographyRepository;

  Future<void> getSportsModel(String category) async {
    emit(HomeState(
      status: Status.loading,
    ));

    try {
      final sports = await sportsRepository.getSportsData(category);
      final animal = await animalsRepository.getAnimalsData();
      final art = await artRepository.getArtData();
      final computer = await computerScienceRepository.getComputerScienceData();
      final geography = await geographyRepository.getGeographyData();

      emit(HomeState(
        sportsModel: sports,
        animalsModel: animal,
        artModel: art,
        computerScienceModel: computer,
        geographyModel: geography,
        status: Status.success,
      ));
    } catch (error) {
      emit(
        HomeState(
          status: Status.error,
          errorMessage: error.toString(),
        ),
      );
    }
  }
  // Future<void> getAnimalModel() async {
  //   emit(HomeState(
  //     status: Status.loading,
  //   ));
  //   final categories = await categoriesRepository.getAnimalsData();

  //   try {
  //     emit(HomeState(
  //       animalsModel: categories,
  //       status: Status.success,
  //     ));
  //   } catch (error) {
  //     emit(
  //       HomeState(
  //         status: Status.error,
  //         errorMessage: error.toString(),
  //       ),
  //     );
  //   }
  // }
}
