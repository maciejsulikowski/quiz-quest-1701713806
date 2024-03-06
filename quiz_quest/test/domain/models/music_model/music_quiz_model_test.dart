import 'package:flutter_test/flutter_test.dart';
import 'package:quiz_quest/app/domain/models/music_model/music_quiz_model.dart';

void main() {
  group('List of Results', () {
    test('should create instance List of Results from JSON', () {
      final json = {
        'category': 'Music',
        'question': 'Question 1',
        'correct_answer': 'Answer 1',
        'incorrect_answers': [
          'Incorrect Answer 1',
          'Incorrect Answer 2',
          'Incorrect Answer 3'
        ],
      };

      final listOfResults = Results4.fromJson(json);

      expect(listOfResults, isA<Results4>());
      expect(listOfResults.category, equals('Music'));
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
      final listOfResults1 = Results4('Music', 'Question 1', 'Answer 1', [
        'Incorrect Answer 1',
        'Incorrect Answer 2',
        'Incorrect Answer 3',
      ]);
      final listOfResults4 = Results4('Music', 'Question 1', 'Answer 1', [
        'Incorrect Answer 1',
        'Incorrect Answer 2',
        'Incorrect Answer 3',
      ]);

      expect(listOfResults1, equals(listOfResults4));
    });

    test('should check ineequality of List of Results instances', () {
      final listOfResults1 = Results4('Music', 'Question 1', 'Answer 1', [
        'Incorrect Answer 1',
        'Incorrect Answer 2',
        'Incorrect Answer 3',
      ]);
      final listOfResults4 =
          Results4('Music', 'Other Question 1', 'Other Answer 1', [
        'Other Incorrect Answer 1',
        'Other Incorrect Answer 2',
        'Other Incorrect Answer 3',
      ]);

      expect(listOfResults1, isNot(equals(listOfResults4)));
    });

    test('should throw an exception for invalid data JSON data', () {
      final json = {
        'category': 'Music',
        'question': 1,
      };

      expect(() => Results4.fromJson(json), throwsA(isA<Error>()));
    });

    test('should allow null category', () {
      final listOfResults = Results4('', 'Question 1', 'Answer 1', [
        'Incorrect Answer 1',
        'Incorrect Answer 2',
        'Incorrect Answer 3',
      ]);
      expect(listOfResults.category, equals(''));
    });

    test('should allow empty question', () {
      final listOfResults = Results4('Music', '', 'Answer 1', [
        'Incorrect Answer 1',
        'Incorrect Answer 2',
        'Incorrect Answer 3',
      ]);
      expect(listOfResults.question, equals(''));
    });

    test('should allow empty correct answer', () {
      final listOfResults = Results4('Music', 'Question 1', '', [
        'Incorrect Answer 1',
        'Incorrect Answer 2',
        'Incorrect Answer 3',
      ]);
      expect(listOfResults.correctAnswer, equals(''));
    });

    test('should allow empty incorrect answers', () {
      final listOfResults = Results4('Music', 'Question 1', 'Answer 1', []);
      expect(listOfResults.incorrectAnswers, equals([]));
    });
  });

  group('MusicQuizModel', () {
    test('should create instance MusicQuizModel from JSON', () {
      final json = {
        'results': [
          {
            'category': 'Music',
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

      final musicQuizModel = MusicQuizModel.fromJson(json);

      expect(musicQuizModel.results.length, 1);
      expect(musicQuizModel.results[0].category, 'Music');
      expect(musicQuizModel.results[0].question, 'Question 1');
      expect(musicQuizModel.results[0].correctAnswer, 'Answer 1');
      expect(
        musicQuizModel.results[0].incorrectAnswers,
        ['Incorrect Answer 1', 'Incorrect Answer 2', 'Incorrect Answer 3'],
      );
    });
  });
}
