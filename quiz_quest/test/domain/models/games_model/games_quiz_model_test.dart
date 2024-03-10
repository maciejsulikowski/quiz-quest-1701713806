import 'package:flutter_test/flutter_test.dart';
import 'package:quiz_quest/app/domain/models/games_model/games_quiz_model.dart';

void main() {
  group('List of Results', () {
    test('should create instance List of Results from JSON', () {
      final json = {
        'category': 'Games',
        'question': 'Question 1',
        'correct_answer': 'Answer 1',
        'incorrect_answers': [
          'Incorrect Answer 1',
          'Incorrect Answer 2',
          'Incorrect Answer 3'
        ],
      };

      final listOfResults = Results3.fromJson(json);

      expect(listOfResults, isA<Results3>());
      expect(listOfResults.category, equals('Games'));
      expect(listOfResults.question, equals('Question 1'));
      expect(listOfResults.correctAnswer, equals('Answer 1'));
      expect(
          listOfResults.incorrectAnswers,
          equals([
            'Incorrect Answer 1',
            'Incorrect Answer 2',
            'Incorrect Answer 3'
          ]));
    });

    test('should check equality of List of Results instances', () {
      final listOfResults1 = Results3('Games', 'Question 1', 'Answer 1', [
        'Incorrect Answer 1',
        'Incorrect Answer 2',
        'Incorrect Answer 3',
      ]);
      final listOfResults3 = Results3('Games', 'Question 1', 'Answer 1', [
        'Incorrect Answer 1',
        'Incorrect Answer 2',
        'Incorrect Answer 3',
      ]);

      expect(listOfResults1, equals(listOfResults3));
    });

    test('should check ineequality of List of Results instances', () {
      final listOfResults1 = Results3('Games', 'Question 1', 'Answer 1', [
        'Incorrect Answer 1',
        'Incorrect Answer 2',
        'Incorrect Answer 3',
      ]);
      final listOfResults3 =
          Results3('Games', 'Other Question 1', 'Other Answer 1', [
        'Other Incorrect Answer 1',
        'Other Incorrect Answer 2',
        'Other Incorrect Answer 3',
      ]);

      expect(listOfResults1, isNot(equals(listOfResults3)));
    });

    test('should throw an exception for invalid data JSON data', () {
      final json = {
        'category': 'Games',
        'question': 1,
      };

      expect(() => Results3.fromJson(json), throwsA(isA<Error>()));
    });

    test('should allow null category', () {
      final listOfResults = Results3('', 'Question 1', 'Answer 1', [
        'Incorrect Answer 1',
        'Incorrect Answer 2',
        'Incorrect Answer 3',
      ]);
      expect(listOfResults.category, equals(''));
    });

    test('should allow empty question', () {
      final listOfResults = Results3('Games', '', 'Answer 1', [
        'Incorrect Answer 1',
        'Incorrect Answer 2',
        'Incorrect Answer 3',
      ]);
      expect(listOfResults.question, equals(''));
    });

    test('should allow empty correct answer', () {
      final listOfResults = Results3('Games', 'Question 1', '', [
        'Incorrect Answer 1',
        'Incorrect Answer 2',
        'Incorrect Answer 3',
      ]);
      expect(listOfResults.correctAnswer, equals(''));
    });

    test('should allow empty incorrect answers', () {
      final listOfResults = Results3('Games', 'Question 1', 'Answer 1', []);
      expect(listOfResults.incorrectAnswers, equals([]));
    });
  });

  group('GamesQuizModel', () {
    test('should create instance GamesQuizModel from JSON', () {
      final json = {
        'results': [
          {
            'category': 'Games',
            'question': 'Question 1',
            'correct_answer': 'Answer 1',
            'incorrect_answers': [
              'Incorrect Answer 1',
              'Incorrect Answer 2',
              'Incorrect Answer 3'
            ],
          }
        ]
      };

      final gamesQuizModel = GamesQuizModel.fromJson(json);

      expect(gamesQuizModel.results.length, 1);
      expect(gamesQuizModel.results[0].category, 'Games');
      expect(gamesQuizModel.results[0].question, 'Question 1');
      expect(gamesQuizModel.results[0].correctAnswer, 'Answer 1');
      expect(
        gamesQuizModel.results[0].incorrectAnswers,
        ['Incorrect Answer 1', 'Incorrect Answer 2', 'Incorrect Answer 3'],
      );
    });
  });

  test('should convert Results3 object to JSON', () {
    final results =
        Results3('Games', 'Question 1', 'Answer 1', ['Incorrect Answer 1']);
    final json = results.toJson();

    expect(json['category'], equals('Games'));
    expect(json['question'], equals('Question 1'));
    expect(json['correct_answer'], equals('Answer 1'));
    expect(json['incorrect_answers'], equals(['Incorrect Answer 1']));
  });

  test('should handle edge cases for Results3 model', () {
    final emptyResults = Results3('', '', '', []);
    final json = emptyResults.toJson();

    expect(json['category'], equals(''));
    expect(json['question'], equals(''));
    expect(json['correct_answer'], equals(''));
    expect(json['incorrect_answers'], equals([]));
  });

  test('should create instance of Results3 with empty quiz result', () {
    final json = {
      'category': 'Games',
      'question': '',
      'correct_answer': '',
      'incorrect_answers': [],
    };

    final emptyQuizResult = Results3.fromJson(json);

    expect(emptyQuizResult.category, equals('Games'));
    expect(emptyQuizResult.question, isEmpty);
    expect(emptyQuizResult.correctAnswer, isEmpty);
    expect(emptyQuizResult.incorrectAnswers, isEmpty);
  });

  test('should handle category value in JSON for Results3 model', () {
    final json = {
      'category': 'Games',
      'question': '',
      'correct_answer': '',
      'incorrect_answers': [],
    };

    final results = Results3.fromJson(json);

    expect(results.category, equals('Games'));
    expect(results.question, '');
    expect(results.correctAnswer, '');
    expect(results.incorrectAnswers, []);
  });

  test('should handle question value in JSON for Results3 model', () {
    final json = {
      'category': '',
      'question': 'Question 1',
      'correct_answer': '',
      'incorrect_answers': [],
    };

    final results = Results3.fromJson(json);

    expect(results.category, '');
    expect(results.question, 'Question 1');
    expect(results.correctAnswer, '');
    expect(results.incorrectAnswers, []);
  });

  test('should handle correct_answer value in JSON for Results3 model', () {
    final json = {
      'category': '',
      'question': '',
      'correct_answer': 'Answer 1',
      'incorrect_answers': [],
    };

    final results = Results3.fromJson(json);

    expect(results.category, '');
    expect(results.question, '');
    expect(results.correctAnswer, 'Answer 1');
    expect(results.incorrectAnswers, []);
  });
  test(
      'should handle null value for incorrect_answers key in JSON for Results3 model',
      () {
    final json = {
      'category': 'Games',
      'question': 'Question 1',
      'correct_answer': 'Answer 1',
      'incorrect_answers': [],
    };

    final results = Results3.fromJson(json);

    expect(results.category, equals('Games'));
    expect(results.question, equals('Question 1'));
    expect(results.correctAnswer, equals('Answer 1'));
    expect(results.incorrectAnswers, []);
  });

  test('should handle missing results value in JSON for GamesQuizModel', () {
    final json = <String, dynamic>{'results': []};

    final gamesQuizModel = GamesQuizModel.fromJson(json);

    expect(gamesQuizModel.results, []);
  });

  test('should handle empty array for results key in JSON for GamesQuizModel',
      () {
    final json = {
      'results': [],
    };

    final gamesQuizModel = GamesQuizModel.fromJson(json);

    expect(gamesQuizModel.results, isEmpty);
  });

  test('should convert GamesQuizModel object to JSON', () {
    final resultsList = [
      Results3(
        'Games',
        'Question 1',
        'Answer 1',
        ['Incorrect Answer 1'],
      )
    ];

    final quizModel = GamesQuizModel(resultsList);

    final json = quizModel.toJson();

    final expectedJson = {
      'results': [
        Results3(
          'Games',
          'Question 1',
          'Answer 1',
          ['Incorrect Answer 1'],
        )
      ]
    };

    expect(json, equals(expectedJson));
  });
}
