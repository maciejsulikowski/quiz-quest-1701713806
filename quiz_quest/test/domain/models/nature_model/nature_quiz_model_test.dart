import 'package:flutter_test/flutter_test.dart';
import 'package:quiz_quest/app/domain/models/nature_model/nature_quiz_model.dart';

void main() {
  group('List of Results', () {
    test('should create instance List of Results from JSON', () {
      final json = {
        'category': 'Nature',
        'question': 'Question 1',
        'correct_answer': 'Answer 1',
        'incorrect_answers': [
          'Incorrect Answer 1',
          'Incorrect Answer 2',
          'Incorrect Answer 3'
        ],
      };

      final listOfResults = Results7.fromJson(json);

      expect(listOfResults, isA<Results7>());
      expect(listOfResults.category, equals('Nature'));
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
      final listOfResults1 = Results7('Nature', 'Question 1', 'Answer 1', [
        'Incorrect Answer 1',
        'Incorrect Answer 2',
        'Incorrect Answer 3',
      ]);
      final listOfResults7 = Results7('Nature', 'Question 1', 'Answer 1', [
        'Incorrect Answer 1',
        'Incorrect Answer 2',
        'Incorrect Answer 3',
      ]);

      expect(listOfResults1, equals(listOfResults7));
    });

    test('should check ineequality of List of Results instances', () {
      final listOfResults1 = Results7('Nature', 'Question 1', 'Answer 1', [
        'Incorrect Answer 1',
        'Incorrect Answer 2',
        'Incorrect Answer 3',
      ]);
      final listOfResults7 =
          Results7('Nature', 'Other Question 1', 'Other Answer 1', [
        'Other Incorrect Answer 1',
        'Other Incorrect Answer 2',
        'Other Incorrect Answer 3',
      ]);

      expect(listOfResults1, isNot(equals(listOfResults7)));
    });

    test('should throw an exception for invalid data JSON data', () {
      final json = {
        'category': 'Nature',
        'question': 1,
      };

      expect(() => Results7.fromJson(json), throwsA(isA<Error>()));
    });

    test('should allow null category', () {
      final listOfResults = Results7('', 'Question 1', 'Answer 1', [
        'Incorrect Answer 1',
        'Incorrect Answer 2',
        'Incorrect Answer 3',
      ]);
      expect(listOfResults.category, equals(''));
    });

    test('should allow empty question', () {
      final listOfResults = Results7('Nature', '', 'Answer 1', [
        'Incorrect Answer 1',
        'Incorrect Answer 2',
        'Incorrect Answer 3',
      ]);
      expect(listOfResults.question, equals(''));
    });

    test('should allow empty correct answer', () {
      final listOfResults = Results7('Nature', 'Question 1', '', [
        'Incorrect Answer 1',
        'Incorrect Answer 2',
        'Incorrect Answer 3',
      ]);
      expect(listOfResults.correctAnswer, equals(''));
    });

    test('should allow empty incorrect answers', () {
      final listOfResults = Results7('Nature', 'Question 1', 'Answer 1', []);
      expect(listOfResults.incorrectAnswers, equals([]));
    });
  });

  group('NatureQuizModel', () {
    test('should create instance NatureQuizModel from JSON', () {
      final json = {
        'results': [
          {
            'category': 'Nature',
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

      final natureQuizModel = NatureQuizModel.fromJson(json);

      expect(natureQuizModel.results.length, 1);
      expect(natureQuizModel.results[0].category, 'Nature');
      expect(natureQuizModel.results[0].question, 'Question 1');
      expect(natureQuizModel.results[0].correctAnswer, 'Answer 1');
      expect(
        natureQuizModel.results[0].incorrectAnswers,
        ['Incorrect Answer 1', 'Incorrect Answer 2', 'Incorrect Answer 3'],
      );
    });
  });
}
