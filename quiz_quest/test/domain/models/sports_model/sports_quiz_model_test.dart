import 'package:flutter_test/flutter_test.dart';
import 'package:quiz_quest/app/domain/models/sports_model/sports_quiz_model.dart';

void main() {
  group('List of Results', () {
    test('should create instance List of Results from JSON', () {
      final json = {
        'category': 'Sports',
        'question': 'Question 1',
        'correct_answer': 'Answer 1',
        'incorrect_answers': [
          'Incorrect Answer 1',
          'Incorrect Answer 2',
          'Incorrect Answer 3'
        ],
      };

      final listOfResults = Results1.fromJson(json);

      expect(listOfResults, isA<Results1>());
      expect(listOfResults.category, equals('Sports'));
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
      final listOfResults1 = Results1('Sports', 'Question 1', 'Answer 1', [
        'Incorrect Answer 1',
        'Incorrect Answer 2',
        'Incorrect Answer 3',
      ]);
      final listOfResults2 = Results1('Sports', 'Question 1', 'Answer 1', [
        'Incorrect Answer 1',
        'Incorrect Answer 2',
        'Incorrect Answer 3',
      ]);

      expect(listOfResults1, equals(listOfResults2));
    });

    test('should check ineequality of List of Results instances', () {
      final listOfResults1 = Results1('Sports', 'Question 1', 'Answer 1', [
        'Incorrect Answer 1',
        'Incorrect Answer 2',
        'Incorrect Answer 3',
      ]);
      final listOfResults2 =
          Results1('Sports', 'Other Question 1', 'Other Answer 1', [
        'Other Incorrect Answer 1',
        'Other Incorrect Answer 2',
        'Other Incorrect Answer 3',
      ]);

      expect(listOfResults1, isNot(equals(listOfResults2)));
    });

    test('should throw an exception for invalid data JSON data', () {
      final json = {
        'category': 'Sports',
        'question': 1,
      };

      expect(() => Results1.fromJson(json), throwsA(isA<Error>()));
    });

    test('should allow null category', () {
      final listOfResults = Results1('', 'Question 1', 'Answer 1', [
        'Incorrect Answer 1',
        'Incorrect Answer 2',
        'Incorrect Answer 3',
      ]);
      expect(listOfResults.category, equals(''));
    });

    test('should allow empty question', () {
      final listOfResults = Results1('Sports', '', 'Answer 1', [
        'Incorrect Answer 1',
        'Incorrect Answer 2',
        'Incorrect Answer 3',
      ]);
      expect(listOfResults.question, equals(''));
    });

    test('should allow empty correct answer', () {
      final listOfResults = Results1('Sports', 'Question 1', '', [
        'Incorrect Answer 1',
        'Incorrect Answer 2',
        'Incorrect Answer 3',
      ]);
      expect(listOfResults.correctAnswer, equals(''));
    });

    test('should allow empty incorrect answers', () {
      final listOfResults = Results1('Sports', 'Question 1', 'Answer 1', []);
      expect(listOfResults.incorrectAnswers, equals([]));
    });
  });

  group('SportsQuizModel', () {
    test('should create instance SportsQuizModel from JSON', () {
      final json = {
        'results': [
          {
            'category': 'Sports',
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

      final sportsQuizModel = SportsQuizModel.fromJson(json);

      expect(sportsQuizModel.results.length, 1);
      expect(sportsQuizModel.results[0].category, 'Sports');
      expect(sportsQuizModel.results[0].question, 'Question 1');
      expect(sportsQuizModel.results[0].correctAnswer, 'Answer 1');
      expect(
        sportsQuizModel.results[0].incorrectAnswers,
        ['Incorrect Answer 1', 'Incorrect Answer 2', 'Incorrect Answer 3'],
      );
    });
  });
}
