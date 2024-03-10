import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:quiz_quest/app/data/data_sources/quiz_data_source/quiz_categories_data_source.dart';
import 'package:quiz_quest/app/domain/models/films_model/films_quiz_model.dart';
import 'package:quiz_quest/app/domain/models/games_model/games_quiz_model.dart';
import 'package:quiz_quest/app/domain/models/general_model/general_quiz_model.dart';
import 'package:quiz_quest/app/domain/models/geography_model/geography_quiz_model.dart';
import 'package:quiz_quest/app/domain/models/history_model/history_quiz_model.dart';
import 'package:quiz_quest/app/domain/models/music_model/music_quiz_model.dart';
import 'package:quiz_quest/app/domain/models/nature_model/nature_quiz_model.dart';
import 'package:quiz_quest/app/domain/models/sports_model/sports_quiz_model.dart';
import 'package:quiz_quest/app/domain/models/tv_model/tv_quiz_model.dart';
import 'package:quiz_quest/app/domain/repositories/quiz_repository/quiz_repository.dart';

class MockQuizDataSource extends Mock
    implements QuizCategoriesRetrofitDataSource {}

void main() {
  late QuizRepository sut;
  late MockQuizDataSource dataSource;

  setUp(() {
    dataSource = MockQuizDataSource();
    sut = QuizRepository(dataSource);
  });

  group('getFilmsData', () {
    test('should call getEasyFilmsCategory()', () async {
      when(() => dataSource.getEasyFilmCategory())
          .thenAnswer((_) async => FilmsQuizModel([]));

      await sut.getEasyFilmsData();

      verify(() => dataSource.getEasyFilmCategory()).called(1);
    });
    test('should call getMediumFilmsCateogry()', () async {
      when(() => dataSource.getMediumFilmCategory())
          .thenAnswer((_) async => FilmsQuizModel([]));

      await sut.getMediumFilmsData();

      verify(() => dataSource.getMediumFilmCategory()).called(1);
    });
    test('should call getEasyFilmsCategory()', () async {
      when(() => dataSource.getHardFilmCategory())
          .thenAnswer((_) async => FilmsQuizModel([]));

      await sut.getHardFilmsData();

      verify(() => dataSource.getHardFilmCategory()).called(1);
    });
  });

  group('getGamesData', () {
    test('should call getEasyGamesCategory()', () async {
      when(() => dataSource.getEasyGamesCategory())
          .thenAnswer((_) async => GamesQuizModel([]));

      await sut.getEasyGamesData();

      verify(() => dataSource.getEasyGamesCategory()).called(1);
    });
    test('should call getMediumGamesCateogry()', () async {
      when(() => dataSource.getMediumGamesCategory())
          .thenAnswer((_) async => GamesQuizModel([]));

      await sut.getMediumGamesData();

      verify(() => dataSource.getMediumGamesCategory()).called(1);
    });
    test('should call getEasyGamesCategory()', () async {
      when(() => dataSource.getHardGamesCategory())
          .thenAnswer((_) async => GamesQuizModel([]));

      await sut.getHardGamesData();

      verify(() => dataSource.getHardGamesCategory()).called(1);
    });
  });

  group('getGeographyData', () {
    test('should call getEasyGeographyCategory()', () async {
      when(() => dataSource.getEasyGeographyCategory())
          .thenAnswer((_) async => GeographyQuizModel([]));

      await sut.getEasyGeographyData();

      verify(() => dataSource.getEasyGeographyCategory()).called(1);
    });
    test('should call getMediumGeographyCateogry()', () async {
      when(() => dataSource.getMediumGeographyCategory())
          .thenAnswer((_) async => GeographyQuizModel([]));

      await sut.getMediumGeographyData();

      verify(() => dataSource.getMediumGeographyCategory()).called(1);
    });
    test('should call getEasyGeographyCategory()', () async {
      when(() => dataSource.getHardGeographyCategory())
          .thenAnswer((_) async => GeographyQuizModel([]));

      await sut.getHardGeographyData();

      verify(() => dataSource.getHardGeographyCategory()).called(1);
    });
  });

  group('getGeneralData', () {
    test('should call getEasyGeneralCategory()', () async {
      when(() => dataSource.getEasyGeneralCategory())
          .thenAnswer((_) async => GeneralQuizModel([]));

      await sut.getEasyGeneralData();

      verify(() => dataSource.getEasyGeneralCategory()).called(1);
    });
    test('should call getMediumGeneralCateogry()', () async {
      when(() => dataSource.getMediumGeneralCategory())
          .thenAnswer((_) async => GeneralQuizModel([]));

      await sut.getMediumGeneralData();

      verify(() => dataSource.getMediumGeneralCategory()).called(1);
    });
    test('should call getEasyGeneralCategory()', () async {
      when(() => dataSource.getHardGeneralCategory())
          .thenAnswer((_) async => GeneralQuizModel([]));

      await sut.getHardGeneralData();

      verify(() => dataSource.getHardGeneralCategory()).called(1);
    });
  });

  group('getHistoryData', () {
    test('should call getEasyHistoryCategory()', () async {
      when(() => dataSource.getEasyHistoryCategory())
          .thenAnswer((_) async => HistoryQuizModel([]));

      await sut.getEasyHistoryData();

      verify(() => dataSource.getEasyHistoryCategory()).called(1);
    });
    test('should call getMediumHistoryCateogry()', () async {
      when(() => dataSource.getMediumHistoryCategory())
          .thenAnswer((_) async => HistoryQuizModel([]));

      await sut.getMediumHistoryData();

      verify(() => dataSource.getMediumHistoryCategory()).called(1);
    });
    test('should call getEasyHistoryCategory()', () async {
      when(() => dataSource.getHardHistoryCategory())
          .thenAnswer((_) async => HistoryQuizModel([]));

      await sut.getHardHistoryData();

      verify(() => dataSource.getHardHistoryCategory()).called(1);
    });
  });

  group('getMusicData', () {
    test('should call getEasyMusicCategory()', () async {
      when(() => dataSource.getEasyMusicCategory())
          .thenAnswer((_) async => MusicQuizModel([]));

      await sut.getEasyMusicData();

      verify(() => dataSource.getEasyMusicCategory()).called(1);
    });
    test('should call getMediumMusicCateogry()', () async {
      when(() => dataSource.getMediumMusicCategory())
          .thenAnswer((_) async => MusicQuizModel([]));

      await sut.getMediumMusicData();

      verify(() => dataSource.getMediumMusicCategory()).called(1);
    });
    test('should call getEasyMusicCategory()', () async {
      when(() => dataSource.getHardMusicCategory())
          .thenAnswer((_) async => MusicQuizModel([]));

      await sut.getHardMusicData();

      verify(() => dataSource.getHardMusicCategory()).called(1);
    });
  });

  group('getNatureData', () {
    test('should call getEasyNatureCategory()', () async {
      when(() => dataSource.getEasyNatureCategory())
          .thenAnswer((_) async => NatureQuizModel([]));

      await sut.getEasyNatureData();

      verify(() => dataSource.getEasyNatureCategory()).called(1);
    });
    test('should call getMediumNatureCateogry()', () async {
      when(() => dataSource.getMediumNatureCategory())
          .thenAnswer((_) async => NatureQuizModel([]));

      await sut.getMediumNatureData();

      verify(() => dataSource.getMediumNatureCategory()).called(1);
    });
    test('should call getEasyNatureCategory()', () async {
      when(() => dataSource.getHardNatureCategory())
          .thenAnswer((_) async => NatureQuizModel([]));

      await sut.getHardNatureData();

      verify(() => dataSource.getHardNatureCategory()).called(1);
    });
  });

  group('getSportData', () {
    test('should call getEasySportCategory()', () async {
      when(() => dataSource.getEasySportCategory())
          .thenAnswer((_) async => SportsQuizModel([]));

      await sut.getEasySportData();

      verify(() => dataSource.getEasySportCategory()).called(1);
    });
    test('should call getMediumSportCateogry()', () async {
      when(() => dataSource.getMediumSportCategory())
          .thenAnswer((_) async => SportsQuizModel([]));

      await sut.getMediumSportData();

      verify(() => dataSource.getMediumSportCategory()).called(1);
    });
    test('should call getEasySportCategory()', () async {
      when(() => dataSource.getHardSportCategory())
          .thenAnswer((_) async => SportsQuizModel([]));

      await sut.getHardSportData();

      verify(() => dataSource.getHardSportCategory()).called(1);
    });
  });

  group('getTVData', () {
    test('should call getEasyTVCategory()', () async {
      when(() => dataSource.getEasyTVCategory())
          .thenAnswer((_) async => TVQuizModel([]));

      await sut.getEasyTVData();

      verify(() => dataSource.getEasyTVCategory()).called(1);
    });
    test('should call getMediumTVCateogry()', () async {
      when(() => dataSource.getMediumTVCategory())
          .thenAnswer((_) async => TVQuizModel([]));

      await sut.getMediumTVData();

      verify(() => dataSource.getMediumTVCategory()).called(1);
    });
    test('should call getEasyTVCategory()', () async {
      when(() => dataSource.getHardTVCategory())
          .thenAnswer((_) async => TVQuizModel([]));

      await sut.getHardTVData();

      verify(() => dataSource.getHardTVCategory()).called(1);
    });
  });
}

