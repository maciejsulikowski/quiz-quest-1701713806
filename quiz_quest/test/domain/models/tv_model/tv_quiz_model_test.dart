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
}
