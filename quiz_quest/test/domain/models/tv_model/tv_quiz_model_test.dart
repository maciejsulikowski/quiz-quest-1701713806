import 'package:flutter_test/flutter_test.dart';
import 'package:quiz_quest/app/domain/models/tv_model/tv_quiz_model.dart';

void main() {
  group('List of Results', () {
    test('should create instance List of Results from JSON', () {
      final json = {
        'category': 'TV',
        'question': 'Question 1',
        'correct_answer': 'Answer 1',
        'incorrect_answers': [
          'Incorrect Answer 1',
          'Incorrect Answer 2',
          'Incorrect Answer 3'
        ],
      };

      final listOfResults = Results8.fromJson(json);

      expect(listOfResults, isA<Results8>());
      expect(listOfResults.category, equals('TV'));
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
      final listOfResults8 = Results8('TV', 'Question 1', 'Answer 1', [
        'Incorrect Answer 1',
        'Incorrect Answer 2',
        'Incorrect Answer 3',
      ]);
      final listOfResults2 = Results8('TV', 'Question 1', 'Answer 1', [
        'Incorrect Answer 1',
        'Incorrect Answer 2',
        'Incorrect Answer 3',
      ]);

      expect(listOfResults8, equals(listOfResults2));
    });

    test('should check ineequality of List of Results instances', () {
      final listOfResults8 = Results8('TV', 'Question 1', 'Answer 1', [
        'Incorrect Answer 1',
        'Incorrect Answer 2',
        'Incorrect Answer 3',
      ]);
      final listOfResults2 =
          Results8('TV', 'Other Question 1', 'Other Answer 1', [
        'Other Incorrect Answer 1',
        'Other Incorrect Answer 2',
        'Other Incorrect Answer 3',
      ]);

      expect(listOfResults8, isNot(equals(listOfResults2)));
    });

    test('should throw an exception for invalid data JSON data', () {
      final json = {
        'category': 'TV',
        'question': 1,
      };

      expect(() => Results8.fromJson(json), throwsA(isA<Error>()));
    });

    test('should allow null category', () {
      final listOfResults = Results8('', 'Question 1', 'Answer 1', [
        'Incorrect Answer 1',
        'Incorrect Answer 2',
        'Incorrect Answer 3',
      ]);
      expect(listOfResults.category, equals(''));
    });

    test('should allow empty question', () {
      final listOfResults = Results8('TV', '', 'Answer 1', [
        'Incorrect Answer 1',
        'Incorrect Answer 2',
        'Incorrect Answer 3',
      ]);
      expect(listOfResults.question, equals(''));
    });

    test('should allow empty correct answer', () {
      final listOfResults = Results8('TV', 'Question 1', '', [
        'Incorrect Answer 1',
        'Incorrect Answer 2',
        'Incorrect Answer 3',
      ]);
      expect(listOfResults.correctAnswer, equals(''));
    });

    test('should allow empty incorrect answers', () {
      final listOfResults = Results8('TV', 'Question 1', 'Answer 1', []);
      expect(listOfResults.incorrectAnswers, equals([]));
    });
  });

  group('TVQuizModel', () {
    test('should create instance TVQuizModel from JSON', () {
      final json = {
        'results': [
          {
            'category': 'TV',
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

      final tVQuizModel = TVQuizModel.fromJson(json);

      expect(tVQuizModel.results.length, 1);
      expect(tVQuizModel.results[0].category, 'TV');
      expect(tVQuizModel.results[0].question, 'Question 1');
      expect(tVQuizModel.results[0].correctAnswer, 'Answer 1');
      expect(
        tVQuizModel.results[0].incorrectAnswers,
        ['Incorrect Answer 1', 'Incorrect Answer 2', 'Incorrect Answer 3'],
      );
    });
  });

  test('should convert Results8 object to JSON', () {
    final results =
        Results8('TV', 'Question 1', 'Answer 1', ['Incorrect Answer 1']);
    final json = results.toJson();

    expect(json['category'], equals('TV'));
    expect(json['question'], equals('Question 1'));
    expect(json['correct_answer'], equals('Answer 1'));
    expect(json['incorrect_answers'], equals(['Incorrect Answer 1']));
  });

  test('should handle edge cases for Results8 model', () {
    final emptyResults = Results8('', '', '', []);
    final json = emptyResults.toJson();

    expect(json['category'], equals(''));
    expect(json['question'], equals(''));
    expect(json['correct_answer'], equals(''));
    expect(json['incorrect_answers'], equals([]));
  });

  test('should create instance of Results8 with empty quiz result', () {
    final json = {
      'category': 'TV',
      'question': '',
      'correct_answer': '',
      'incorrect_answers': [],
    };

    final emptyQuizResult = Results8.fromJson(json);

    expect(emptyQuizResult.category, equals('TV'));
    expect(emptyQuizResult.question, isEmpty);
    expect(emptyQuizResult.correctAnswer, isEmpty);
    expect(emptyQuizResult.incorrectAnswers, isEmpty);
  });

  test('should handle category value in JSON for Results8 model', () {
    final json = {
      'category': 'TV',
      'question': '',
      'correct_answer': '',
      'incorrect_answers': [],
    };

    final results = Results8.fromJson(json);

    expect(results.category, equals('TV'));
    expect(results.question, '');
    expect(results.correctAnswer, '');
    expect(results.incorrectAnswers, []);
  });

  test('should handle question value in JSON for Results8 model', () {
    final json = {
      'category': '',
      'question': 'Question 1',
      'correct_answer': '',
      'incorrect_answers': [],
    };

    final results = Results8.fromJson(json);

    expect(results.category, '');
    expect(results.question, 'Question 1');
    expect(results.correctAnswer, '');
    expect(results.incorrectAnswers, []);
  });

  test('should handle correct_answer value in JSON for Results8 model', () {
    final json = {
      'category': '',
      'question': '',
      'correct_answer': 'Answer 1',
      'incorrect_answers': [],
    };

    final results = Results8.fromJson(json);

    expect(results.category, '');
    expect(results.question, '');
    expect(results.correctAnswer, 'Answer 1');
    expect(results.incorrectAnswers, []);
  });
  test(
      'should handle null value for incorrect_answers key in JSON for Results8 model',
      () {
    final json = {
      'category': 'TV',
      'question': 'Question 1',
      'correct_answer': 'Answer 1',
      'incorrect_answers': [],
    };

    final results = Results8.fromJson(json);

    expect(results.category, equals('TV'));
    expect(results.question, equals('Question 1'));
    expect(results.correctAnswer, equals('Answer 1'));
    expect(results.incorrectAnswers, []);
  });

  test('should handle missing results value in JSON for TVQuizModel', () {
    final json = <String, dynamic>{'results': []};

    final tVQuizModel = TVQuizModel.fromJson(json);

    expect(tVQuizModel.results, []);
  });

  test('should handle empty array for results key in JSON for TVQuizModel', () {
    final json = {
      'results': [],
    };

    final tVQuizModel = TVQuizModel.fromJson(json);

    expect(tVQuizModel.results, isEmpty);
  });

  test('should convert TVQuizModel object to JSON', () {
    final resultsList = [
      Results8(
        'TV',
        'Question 1',
        'Answer 1',
        ['Incorrect Answer 1'],
      )
    ];

    final quizModel = TVQuizModel(resultsList);

    final json = quizModel.toJson();

    final expectedJson = {
      'results': [
        Results8(
          'TV',
          'Question 1',
          'Answer 1',
          ['Incorrect Answer 1'],
        )
      ]
    };

    expect(json, equals(expectedJson));
  });
}
