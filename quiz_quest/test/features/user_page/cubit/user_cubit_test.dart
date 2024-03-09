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

void main() {
  late MockUserRepository userRepository;
  late MockRankingRepository rankingRepository;
  late UserCubit sut;

  setUp(() {
    userRepository = MockUserRepository();
    rankingRepository = MockRankingRepository();
    sut = UserCubit(userRepository, rankingRepository);
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
}
