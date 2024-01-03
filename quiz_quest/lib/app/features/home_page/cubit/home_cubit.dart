import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:quiz_quest/app/core/enums.dart';
import 'package:quiz_quest/app/domain/models/animals_model/animals_quiz_model.dart';
import 'package:quiz_quest/app/domain/models/art_model/art_quiz_model.dart';
import 'package:quiz_quest/app/domain/models/computer_science_model/computer_science_quiz_model.dart';
import 'package:quiz_quest/app/domain/models/geography_model/geography_quiz_model.dart';
import 'package:quiz_quest/app/domain/models/history_model/history_quiz_model.dart';
import 'package:quiz_quest/app/domain/models/politics_model/politics_quiz_model.dart';
import 'package:quiz_quest/app/domain/models/sports_model/sports_quiz_model.dart';
import 'package:quiz_quest/app/domain/models/vehicles_model/vehicles_quiz_model.dart';
import 'package:quiz_quest/app/domain/repositories/animals_repository/animals_repository.dart';
import 'package:quiz_quest/app/domain/repositories/art_repostitory/art_repository.dart';
import 'package:quiz_quest/app/domain/repositories/category_repository.dart';
import 'package:quiz_quest/app/domain/repositories/computer_science_repository/computer_science_repository.dart';
import 'package:quiz_quest/app/domain/repositories/geography_repository/geography_repository.dart';
import 'package:quiz_quest/app/domain/repositories/history_repository/history_repository.dart';
import 'package:quiz_quest/app/domain/repositories/politics_repository/politics_repository.dart';
import 'package:quiz_quest/app/domain/repositories/sports_repository/sports_repository.dart';
import 'package:quiz_quest/app/domain/repositories/vehicles_repository/vehicles_repository.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(
    this.sportsRepository,
    this.animalsRepository,
    this.artRepository,
    this.computerScienceRepository,
    this.geographyRepository,
    this.historyRepository,
    this.politicsRepository,
    this.vehiclesRepository,
  ) : super(HomeState());

  final SportsRepository sportsRepository;
  final AnimalsRepository animalsRepository;
  final ArtRepository artRepository;
  final ComputerScienceRepository computerScienceRepository;
  final GeographyRepository geographyRepository;
  final HistoryRepository historyRepository;
  final PoliticsRepository politicsRepository;
  final VehiclesRepository vehiclesRepository;

  Future<void> getCategoryModel() async {
    emit(HomeState(
      status: Status.loading,
    ));

    try {
      final sports = await sportsRepository.getSportsData();
      final animal = await animalsRepository.getAnimalsData();
      final art = await artRepository.getArtData();
      final computer = await computerScienceRepository.getComputerScienceData();
      final geography = await geographyRepository.getGeographyData();
      final history = await historyRepository.getHistoryData();
      final politics = await politicsRepository.getHistoryData();
      final vehicles = await vehiclesRepository.getVehiclesData();

      emit(HomeState(
        sportsModel: sports,
        animalsModel: animal,
        artModel: art,
        computerScienceModel: computer,
        geographyModel: geography,
        historyModel: history,
        politicsModel: politics,
        vehiclesModel: vehicles,
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
