import 'package:flutter_test/flutter_test.dart';
import 'package:quiz_quest/app/domain/models/history_model/history_quiz_model.dart';

void main() {
  group('List of Results', () {
    test('should create instance List of Results from JSON', () {
      final json = {
        'category': 'History',
        'question': 'Question 1',
        'correct_answer': 'Answer 1',
        'incorrect_answers': [
          'Incorrect Answer 1',
          'Incorrect Answer 2',
          'Incorrect Answer 3'
        ],
      };

      final listOfResults = Results6.fromJson(json);

      expect(listOfResults, isA<Results6>());
      expect(listOfResults.category, equals('History'));
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
      final listOfResults1 = Results6('History', 'Question 1', 'Answer 1', [
        'Incorrect Answer 1',
        'Incorrect Answer 2',
        'Incorrect Answer 3',
      ]);
      final listOfResults6 = Results6('History', 'Question 1', 'Answer 1', [
        'Incorrect Answer 1',
        'Incorrect Answer 2',
        'Incorrect Answer 3',
      ]);

      expect(listOfResults1, equals(listOfResults6));
    });

    test('should check ineequality of List of Results instances', () {
      final listOfResults1 = Results6('History', 'Question 1', 'Answer 1', [
        'Incorrect Answer 1',
        'Incorrect Answer 2',
        'Incorrect Answer 3',
      ]);
      final listOfResults6 =
          Results6('History', 'Other Question 1', 'Other Answer 1', [
        'Other Incorrect Answer 1',
        'Other Incorrect Answer 2',
        'Other Incorrect Answer 3',
      ]);

      expect(listOfResults1, isNot(equals(listOfResults6)));
    });

    test('should throw an exception for invalid data JSON data', () {
      final json = {
        'category': 'History',
        'question': 1,
      };

      expect(() => Results6.fromJson(json), throwsA(isA<Error>()));
    });

    test('should allow null category', () {
      final listOfResults = Results6('', 'Question 1', 'Answer 1', [
        'Incorrect Answer 1',
        'Incorrect Answer 2',
        'Incorrect Answer 3',
      ]);
      expect(listOfResults.category, equals(''));
    });

    test('should allow empty question', () {
      final listOfResults = Results6('History', '', 'Answer 1', [
        'Incorrect Answer 1',
        'Incorrect Answer 2',
        'Incorrect Answer 3',
      ]);
      expect(listOfResults.question, equals(''));
    });

    test('should allow empty correct answer', () {
      final listOfResults = Results6('History', 'Question 1', '', [
        'Incorrect Answer 1',
        'Incorrect Answer 2',
        'Incorrect Answer 3',
      ]);
      expect(listOfResults.correctAnswer, equals(''));
    });

    test('should allow empty incorrect answers', () {
      final listOfResults = Results6('History', 'Question 1', 'Answer 1', []);
      expect(listOfResults.incorrectAnswers, equals([]));
    });
  });

  group('HistoryQuizModel', () {
    test('should create instance HistoryQuizModel from JSON', () {
      final json = {
        'results': [
          {
            'category': 'History',
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

      final historyQuizModel = HistoryQuizModel.fromJson(json);

      expect(historyQuizModel.results.length, 1);
      expect(historyQuizModel.results[0].category, 'History');
      expect(historyQuizModel.results[0].question, 'Question 1');
      expect(historyQuizModel.results[0].correctAnswer, 'Answer 1');
      expect(
        historyQuizModel.results[0].incorrectAnswers,
        ['Incorrect Answer 1', 'Incorrect Answer 2', 'Incorrect Answer 3'],
      );
    });
  });
}
