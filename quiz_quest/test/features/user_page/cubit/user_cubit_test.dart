import 'dart:async';

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:quiz_quest/app/core/enums.dart';
import 'package:quiz_quest/app/domain/models/user_model/user_model.dart';
import 'package:quiz_quest/app/domain/repositories/ranking_respository/ranking_repository.dart';
import 'package:quiz_quest/app/domain/repositories/user_repository/user_repository.dart';
import 'package:quiz_quest/app/features/user_page/cubit/user_cubit.dart';

class MockUserRepository extends Mock implements UserRepository {}

class MockRankingRepository extends Mock implements RankingRepository {}

class MockStreamSubscription extends Mock implements StreamSubscription {}

void main() {
  late MockUserRepository userRepository;
  late MockRankingRepository rankingRepository;
  late UserCubit sut;
  late MockStreamSubscription streamSubscription;

  setUp(() {
    userRepository = MockUserRepository();
    rankingRepository = MockRankingRepository();
    sut = UserCubit(userRepository, rankingRepository);
    streamSubscription = MockStreamSubscription();
  });

  final userData = UserModel(
      name: 'Maciek',
      surname: 'Sulik',
      imageURL: 'image_url',
      gender: 'Male',
      favouriteCategory: 'Films',
      isUserNew: false);

  group('start', () {
    group('success', () {
      setUp(() {
        when(() => userRepository.getUserModel()).thenAnswer(
          (_) => Stream.value(userData),
        );
      });

      blocTest(
        'should emit Status.loading then Status.success with userModel',
        build: () => sut,
        act: (cubit) => cubit.start(),
        expect: () => [
          UserState(status: Status.loading),
          UserState(userModel: userData, status: Status.success),
        ],
      );
    });

    group('failure', () {
      setUp(() {
        when(() => userRepository.getUserModel())
            .thenAnswer((_) => Stream.error(Exception('test-exception-error')));
      });

      blocTest(
        'should emit errorMessage and Status.error',
        build: () => sut,
        act: (cubit) => cubit.start(),
        expect: () => [
          UserState(
            status: Status.loading,
          ),
          UserState(
              status: Status.error,
              errorMessage: 'Exception: test-exception-error'),
        ],
      );
    });
  });

  group('updateRankingName', () {
    group('succes', () {
      setUp(() {
        when(() => userRepository.updateRankingName('Maciek')).thenAnswer(
          (_) async => {},
        );
      });

      blocTest(
        'should call userRepository.updateRankingName() method',
        build: () => sut,
        act: (cubit) => cubit.updateRankingName('Maciek'),
        expect: () => [
          UserState(status: Status.success, isSaved: true),
        ],
      );
    });

    group('failure', () {
      setUp(() {
        when(() => userRepository.updateRankingName('Maciek'))
            .thenThrow(Exception('test-exception-error'));
      });

      blocTest(
        'should call userRepository.updateRankingName() method',
        build: () => sut,
        act: (cubit) => cubit.updateRankingName('Maciek'),
        expect: () => [
          UserState(
              status: Status.error,
              errorMessage: 'Exception: test-exception-error'),
        ],
      );
    });
  });

  group('updateName', () {
    group('succes', () {
      setUp(() {
        when(() => userRepository.updateName('Maciek')).thenAnswer(
          (_) async => {},
        );
      });

      blocTest(
        'should call userRepository.updateName() method',
        build: () => sut,
        act: (cubit) => cubit.updateName('Maciek'),
        expect: () => [
          UserState(status: Status.loading),
          UserState(status: Status.success, isSaved: true),
        ],
      );
    });

    group('failure', () {
      setUp(() {
        when(() => userRepository.updateName('Maciek'))
            .thenThrow(Exception('test-exception-error'));
      });

      blocTest(
        'should call userRepository.updateName() method',
        build: () => sut,
        act: (cubit) => cubit.updateName('Maciek'),
        expect: () => [
          UserState(status: Status.loading),
          UserState(
              status: Status.error,
              errorMessage: 'Exception: test-exception-error'),
        ],
      );
    });
  });

  group('updateSurname', () {
    group('succes', () {
      setUp(() {
        when(() => userRepository.updateSurname('Suli')).thenAnswer(
          (_) async => {},
        );
      });

      blocTest(
        'should call userRepository.updateSurname() method',
        build: () => sut,
        act: (cubit) => cubit.updateSurname('Suli'),
        expect: () => [
          UserState(status: Status.loading),
          UserState(status: Status.success, isSaved: true),
        ],
      );
    });

    group('failure', () {
      setUp(() {
        when(() => userRepository.updateSurname('Suli'))
            .thenThrow(Exception('test-exception-error'));
      });

      blocTest(
        'should call userRepository.updateSurname() method',
        build: () => sut,
        act: (cubit) => cubit.updateSurname('Suli'),
        expect: () => [
          UserState(status: Status.loading),
          UserState(
              status: Status.error,
              errorMessage: 'Exception: test-exception-error'),
        ],
      );
    });
  });

  group('updateGender', () {
    group('succes', () {
      setUp(() {
        when(() => userRepository.updateGender('Male')).thenAnswer(
          (_) async => {},
        );
      });

      blocTest(
        'should call userRepository.updateGender() method',
        build: () => sut,
        act: (cubit) => cubit.updateGender('Male'),
        expect: () => [
          UserState(status: Status.loading),
          UserState(status: Status.success, isSaved: true),
        ],
      );
    });

    group('failure', () {
      setUp(() {
        when(() => userRepository.updateGender('Male'))
            .thenThrow(Exception('test-exception-error'));
      });

      blocTest(
        'should call userRepository.updateGender() method',
        build: () => sut,
        act: (cubit) => cubit.updateGender('Male'),
        expect: () => [
          UserState(status: Status.loading),
          UserState(
              status: Status.error,
              errorMessage: 'Exception: test-exception-error'),
        ],
      );
    });
  });

  group('updateCategory', () {
    group('succes', () {
      setUp(() {
        when(() => userRepository.updateCategory('Films')).thenAnswer(
          (_) async => {},
        );
      });

      blocTest(
        'should call userRepository.updateCategory() method',
        build: () => sut,
        act: (cubit) => cubit.updateCategory('Films'),
        expect: () => [
          UserState(status: Status.loading),
          UserState(status: Status.success, isSaved: true),
        ],
      );
    });

    group('failure', () {
      setUp(() {
        when(() => userRepository.updateCategory('Films'))
            .thenThrow(Exception('test-exception-error'));
      });

      blocTest(
        'should call userRepository.updateCategory() method',
        build: () => sut,
        act: (cubit) => cubit.updateCategory('Films'),
        expect: () => [
          UserState(status: Status.loading),
          UserState(
              status: Status.error,
              errorMessage: 'Exception: test-exception-error'),
        ],
      );
    });
  });

  group('updateImage', () {
    group('succes', () {
      setUp(() {
        when(() => userRepository.updateImage('image_url')).thenAnswer(
          (_) async => {},
        );
      });

      blocTest(
        'should call userRepository.updateImage() method',
        build: () => sut,
        act: (cubit) => cubit.updateImage('image_url'),
        expect: () => [
          UserState(status: Status.loading),
          UserState(status: Status.success, isSaved: true),
        ],
      );
    });

    group('failure', () {
      setUp(() {
        when(() => userRepository.updateImage('image_url'))
            .thenThrow(Exception('test-exception-error'));
      });

      blocTest(
        'should call userRepository.updateImage() method',
        build: () => sut,
        act: (cubit) => cubit.updateImage('image_url'),
        expect: () => [
          UserState(status: Status.loading),
          UserState(
              status: Status.error,
              errorMessage: 'Exception: test-exception-error'),
        ],
      );
    });
  });

  group('changeUserBool', () {
    group('succes', () {
      setUp(() {
        when(() => userRepository.changeUserBool()).thenAnswer(
          (_) async => {},
        );
      });

      blocTest(
        'should call userRepository.changeUserBool() method',
        build: () => sut,
        act: (cubit) => cubit.changeUserBool(),
        expect: () => [
          UserState(status: Status.loading),
          UserState(status: Status.success, isSaved: true),
        ],
      );
    });

    group('failure', () {
      setUp(() {
        when(() => userRepository.changeUserBool())
            .thenThrow(Exception('test-exception-error'));
      });

      blocTest(
        'should call userRepository.changeUserBool() method',
        build: () => sut,
        act: (cubit) => cubit.changeUserBool(),
        expect: () => [
          UserState(status: Status.loading),
          UserState(
              status: Status.error,
              errorMessage: 'Exception: test-exception-error'),
        ],
      );
    });
  });

  test('close cancels the stream subscription', () {
    when(() => userRepository.getUserModel()).thenAnswer(
      (_) => const Stream.empty(),
    );
    when(() => streamSubscription.cancel()).thenAnswer((_) async {});

    sut.start();
    sut.close();

    verifyNever(() => streamSubscription.cancel()).called(0);
  });
}
