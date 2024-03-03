import 'package:injectable/injectable.dart';
import 'package:quiz_quest/app/data/data_sources/achievements_data_source/achievements_data_source.dart';
import 'package:quiz_quest/app/data/data_sources/user_data_source/user_data_source.dart';
import 'package:quiz_quest/app/domain/models/achievements_model/achievements_model.dart';
import 'package:quiz_quest/app/domain/models/user_model/user_model.dart';

@injectable
class UserRepository {
  UserRepository(this.userDataSource, this.achievementDataSource);

  final UserDataSource userDataSource;
  final AchievementDataSource achievementDataSource;

  Stream<UserModel> getUserModel() {
    final data = userDataSource.getUserData();

    return data.map((doc) {
      return UserModel(
        name: doc['name'],
        surname: doc['surname'],
        imageURL: doc['image_url'],
        gender: doc['gender'],
        favouriteCategory: doc['favourite_categories'],
        isUserNew: doc['is_user_new'],
      );
    });
  }

  Stream<List<Map<String, int>>> getPoints() {
    final data = userDataSource.getPointsData();

    return data.map((doc) {
      return [
        {
          'id': 1,
          'total': doc['films_easy_points'] +
                  doc['films_medium_points'] +
                  doc['films_hard_points'] ??
              0,
          'easy': doc['films_easy_points'] ?? 0,
          'medium': doc['films_medium_points'] ?? 0,
          'hard': doc['films_hard_points'] ?? 0,
        },
        {
          'id': 2,
          'total': doc['games_easy_points'] +
                  doc['games_medium_points'] +
                  doc['games_hard_points'] ??
              0,
          'easy': doc['games_easy_points'] ?? 0,
          'medium': doc['games_medium_points'] ?? 0,
          'hard': doc['games_hard_points'] ?? 0,
        },
        {
          'id': 3,
          'total': doc['general_easy_points'] +
                  doc['general_medium_points'] +
                  doc['general_hard_points'] ??
              0,
          'easy': doc['general_easy_points'] ?? 0,
          'medium': doc['general_medium_points'] ?? 0,
          'hard': doc['general_hard_points'] ?? 0,
        },
        {
          'id': 4,
          'total': doc['geography_easy_points'] +
                  doc['geography_medium_points'] +
                  doc['geography_hard_points'] ??
              0,
          'easy': doc['geography_easy_points'] ?? 0,
          'medium': doc['geography_medium_points'] ?? 0,
          'hard': doc['geography_hard_points'] ?? 0,
        },
        {
          'id': 5,
          'total': doc['history_easy_points'] +
                  doc['history_medium_points'] +
                  doc['history_hard_points'] ??
              0,
          'easy': doc['history_easy_points'] ?? 0,
          'medium': doc['history_medium_points'] ?? 0,
          'hard': doc['history_hard_points'] ?? 0,
        },
        {
          'id': 6,
          'total': doc['music_easy_points'] +
                  doc['music_medium_points'] +
                  doc['music_hard_points'] ??
              0,
          'easy': doc['music_easy_points'] ?? 0,
          'medium': doc['music_medium_points'] ?? 0,
          'hard': doc['music_hard_points'] ?? 0,
        },
        {
          'id': 7,
          'total': doc['nature_easy_points'] +
                  doc['nature_medium_points'] +
                  doc['nature_hard_points'] ??
              0,
          'easy': doc['nature_easy_points'] ?? 0,
          'medium': doc['nature_medium_points'] ?? 0,
          'hard': doc['nature_hard_points'] ?? 0,
        },
        {
          'id': 8,
          'total': doc['sport_easy_points'] +
                  doc['sport_medium_points'] +
                  doc['sport_hard_points'] ??
              0,
          'easy': doc['sport_easy_points'] ?? 0,
          'medium': doc['sport_medium_points'] ?? 0,
          'hard': doc['sport_hard_points'] ?? 0,
        },
        {
          'id': 9,
          'total': doc['tv_easy_points'] +
                  doc['tv_medium_points'] +
                  doc['tv_hard_points'] ??
              0,
          'easy': doc['tv_easy_points'] ?? 0,
          'medium': doc['tv_medium_points'] ?? 0,
          'hard': doc['tv_hard_points'] ?? 0,
        },
      ];
    });
  }

  Stream<AchievementModel> getAchievementsModel() {
    final data = achievementDataSource.getAchievementsData();

    return data.map((doc) {
      return AchievementModel(
        userID: doc['user_id'],
        isFirstAchievementReady: doc['is_first_achievement_ready'],
        isSecondAchievementReady: doc['is_second_achievement_ready'],
        isThirdAchievementReady: doc['is_third_achievement_ready'],
        isFourthAchievementReady: doc['is_fourth_achievement_ready'],
        isFifthAchievementReady: doc['is_fifth_achievement_ready'],
        isSixthAchievementReady: doc['is_sixth_achievement_ready'],
      );
    });
  }

  Future<void> setEmptyAccount() async {
    return userDataSource.setEmptyAccount();
  }

  Future<void> setEmptyPoints() async {
    return userDataSource.setEmptyPoints();
  }

//games
  Future<void> updateEasyGamesPoints(int easyGamesPoints) async {
    return userDataSource.updateEasyGamesPoints(easyGamesPoints);
  }

  Future<void> updateMediumGamesPoints(int mediumGamesPoints) async {
    return userDataSource.updateMediumGamesPoints(mediumGamesPoints);
  }

  Future<void> updateHardGamesPoints(int hardGamesPoints) async {
    return userDataSource.updateHardGamesPoints(hardGamesPoints);
  }

//films

  Future<void> updateEasyFilmsRankingPoints(int easyFilmsPoints) async {
    return userDataSource.updateEasyFilmRankingPoints(easyFilmsPoints);
  }

  Future<void> updateEasyFilmsPoints(int easyFilmsPoints) async {
    return userDataSource.updateEasyFilmPoints(easyFilmsPoints);
  }

  Future<void> updateMediumFilmsPoints(int mediumFilmsPoints) async {
    return userDataSource.updateMediumFilmPoints(mediumFilmsPoints);
  }

  Future<void> updateHardFilmsPoints(int hardFilmsPoints) async {
    return userDataSource.updateHardFilmPoints(hardFilmsPoints);
  }

  //geo
  Future<void> updateEasyGeographyPoints(int easyGeographyPoints) async {
    return userDataSource.updateEasyGeographyPoints(easyGeographyPoints);
  }

  Future<void> updateMediumGeographyPoints(int mediumGeographyPoints) async {
    return userDataSource.updateMediumGeographyPoints(mediumGeographyPoints);
  }

  Future<void> updateHardGeographyPoints(int hardGeographyPoints) async {
    return userDataSource.updateHardGeographyPoints(hardGeographyPoints);
  }

  //history
  Future<void> updateEasyHistoryPoints(int easyHistoryPoints) async {
    return userDataSource.updateEasyHistoryPoints(easyHistoryPoints);
  }

  Future<void> updateMediumHistoryPoints(int mediumHistoryPoints) async {
    return userDataSource.updateMediumHistoryPoints(mediumHistoryPoints);
  }

  Future<void> updateHardHistoryPoints(int hardHistoryPoints) async {
    return userDataSource.updateHardHistoryPoints(hardHistoryPoints);
  }

  //music
  Future<void> updateEasyMusicPoints(int easyMusicPoints) async {
    return userDataSource.updateEasyMusicPoints(easyMusicPoints);
  }

  Future<void> updateMediumMusicPoints(int mediumMusicPoints) async {
    return userDataSource.updateMediumMusicPoints(mediumMusicPoints);
  }

  Future<void> updateHardMusicPoints(int hardMusicPoints) async {
    return userDataSource.updateHardMusicPoints(hardMusicPoints);
  }

  //nature
  Future<void> updateEasyNaturePoints(int easyNaturePoints) async {
    return userDataSource.updateEasyNaturePoints(easyNaturePoints);
  }

  Future<void> updateMediumNaturePoints(int mediumNaturePoints) async {
    return userDataSource.updateMediumNaturePoints(mediumNaturePoints);
  }

  Future<void> updateHardNaturePoints(int hardNaturePoints) async {
    return userDataSource.updateHardNaturePoints(hardNaturePoints);
  }

  //sport
  Future<void> updateEasySportPoints(int easySportPoints) async {
    return userDataSource.updateEasySportPoints(easySportPoints);
  }

  Future<void> updateMediumSportPoints(int mediumSportPoints) async {
    return userDataSource.updateMediumSportPoints(mediumSportPoints);
  }

  Future<void> updateHardSportPoints(int hardSportPoints) async {
    return userDataSource.updateHardSportPoints(hardSportPoints);
  }

  //tv
  Future<void> updateEasyTVPoints(int easyTVPoints) async {
    return userDataSource.updateEasyTvPoints(easyTVPoints);
  }

  Future<void> updateMediumTVPoints(int mediumTVPoints) async {
    return userDataSource.updateMediumTvPoints(mediumTVPoints);
  }

  Future<void> updateHardTVPoints(int hardTVPoints) async {
    return userDataSource.updateHardTvPoints(hardTVPoints);
  }

  //general
  Future<void> updateEasyGeneralPoints(int easyGeneralPoints) async {
    return userDataSource.updateEasyGeneralPoints(easyGeneralPoints);
  }

  Future<void> updateMediumGeneralPoints(int mediumGeneralPoints) async {
    return userDataSource.updateMediumGeneralPoints(mediumGeneralPoints);
  }

  Future<void> updateHardGeneralPoints(int hardGeneralPoints) async {
    return userDataSource.updateHardGeneralPoints(hardGeneralPoints);
  }

  //-----user-----//

  Future<void> updateRankingName(String name) async {
    return userDataSource.updateRankingName(name: name);
  }

  Future<void> updateName(String name) async {
    return userDataSource.updateName(name: name);
  }

  Future<void> updateSurname(String surname) async {
    return userDataSource.updateSurname(surname: surname);
  }

  Future<void> updateGender(String gender) async {
    return userDataSource.updateGender(gender: gender);
  }

  Future<void> updateImage(String imageURL) async {
    return userDataSource.updateImage(imageURL: imageURL);
  }

  Future<void> updateCategory(String category) async {
    return userDataSource.updateCategory(category: category);
  }

  Future<void> changeUserBool() async {
    return userDataSource.changeUserBool();
  }
}
