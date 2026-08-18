import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';
import 'package:wassaly/core/utils/failure.dart';
import 'package:wassaly/features/auth/data/datasources/auth_local_datasource.dart';
import 'package:wassaly/features/auth/data/datasources/auth_remote_datasource.dart';
import 'package:wassaly/features/auth/data/models/login_response_model.dart';
import 'package:wassaly/features/auth/data/models/user_model.dart';
import 'package:wassaly/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:wassaly/features/auth/domain/entities/user_entity.dart';
import 'package:wassaly/features/cart/data/datasources/cart_local_datasource.dart';
import 'package:wassaly/features/favorite/data/datasources/favorite_local_datasource.dart';

class MockAuthRemoteDataSource extends Mock implements AuthRemoteDataSource {}
class MockAuthLocalDataSource extends Mock implements AuthLocalDataSource {}
class MockCartLocalDataSource extends Mock implements CartLocalDataSource {}
class MockFavoriteLocalDataSource extends Mock implements FavoriteLocalDataSource {}

void main() {
  late AuthRepositoryImpl repository;
  late MockAuthRemoteDataSource mockRemoteDataSource;
  late MockAuthLocalDataSource mockLocalDataSource;
  late MockCartLocalDataSource mockCartDataSource;
  late MockFavoriteLocalDataSource mockFavoriteDataSource;

  const tUser = UserModel(
    id: '1',
    email: 'test@example.com',
    name: 'Test User',
    token: 'test_token',
  );

  const tLoginData = LoginData(
    user: tUser,
    token: 'test_token',
  );

  setUpAll(() {
    registerFallbackValue(tUser);
  });

  setUp(() {
    mockRemoteDataSource = MockAuthRemoteDataSource();
    mockLocalDataSource = MockAuthLocalDataSource();
    mockCartDataSource = MockCartLocalDataSource();
    mockFavoriteDataSource = MockFavoriteLocalDataSource();

    repository = AuthRepositoryImpl(
      mockRemoteDataSource,
      mockLocalDataSource,
      mockCartDataSource,
      mockFavoriteDataSource,
    );
  });

  group('login', () {
    test('returns Right(UserEntity) on successful remote login and local caching', () async {
      when(() => mockRemoteDataSource.login(email: 'test@example.com', password: 'password123'))
          .thenAnswer((_) async => tLoginData);
      when(() => mockLocalDataSource.saveToken('test_token'))
          .thenAnswer((_) async {});
      when(() => mockLocalDataSource.cacheUser(any()))
          .thenAnswer((_) async {});

      final result = await repository.login(
        email: 'test@example.com',
        password: 'password123',
      );

      expect(result.isRight(), true);
      result.fold(
        (_) => fail('Should be Right'),
        (user) => expect(user.id, '1'),
      );
      verify(() => mockRemoteDataSource.login(email: 'test@example.com', password: 'password123')).called(1);
      verify(() => mockLocalDataSource.saveToken('test_token')).called(1);
    });

    test('returns Left(Failure) when remoteDataSource throws Failure', () async {
      when(() => mockRemoteDataSource.login(email: 'test@example.com', password: 'wrong'))
          .thenThrow(const ServerFailure('Invalid credentials'));

      final result = await repository.login(
        email: 'test@example.com',
        password: 'wrong',
      );

      expect(result, const Left<Failure, UserEntity>(ServerFailure('Invalid credentials')));
    });
  });

  group('getSavedToken', () {
    test('returns token from local data source', () async {
      when(() => mockLocalDataSource.getToken())
          .thenAnswer((_) async => 'stored_token');

      final result = await repository.getSavedToken();

      expect(result, const Right<Failure, String?>('stored_token'));
      verify(() => mockLocalDataSource.getToken()).called(1);
    });
  });

  group('clearUserSession', () {
    test('clears auth data, cart and favorites', () async {
      when(() => mockLocalDataSource.clearAuthData()).thenAnswer((_) async {});
      when(() => mockCartDataSource.clearCartLocally()).thenAnswer((_) async => const Right<Failure, void>(null));
      when(() => mockFavoriteDataSource.clearFavoritesLocally()).thenAnswer((_) async => const Right<Failure, void>(null));

      final result = await repository.clearUserSession();

      expect(result, const Right<Failure, void>(null));
      verify(() => mockLocalDataSource.clearAuthData()).called(1);
      verify(() => mockCartDataSource.clearCartLocally()).called(1);
      verify(() => mockFavoriteDataSource.clearFavoritesLocally()).called(1);
    });
  });
}
