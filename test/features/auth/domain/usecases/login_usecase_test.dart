import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';
import 'package:wassaly/core/utils/failure.dart';
import 'package:wassaly/features/auth/domain/entities/user_entity.dart';
import 'package:wassaly/features/auth/domain/repositories/auth_repository.dart';
import 'package:wassaly/features/auth/domain/usecases/login_usecase.dart';

class MockAuthRepository extends Mock implements AuthRepository {}

void main() {
  late LoginUseCase useCase;
  late MockAuthRepository mockAuthRepository;

  setUp(() {
    mockAuthRepository = MockAuthRepository();
    useCase = LoginUseCase(mockAuthRepository);
  });

  const tUser = UserEntity(
    id: '1',
    email: 'test@example.com',
    name: 'Test User',
  );

  const tParams = LoginParams(
    email: 'test@example.com',
    password: 'password123',
  );

  test('should return UserEntity on successful login', () async {
    // Arrange
    when(
      () => mockAuthRepository.login(
        email: tParams.email,
        password: tParams.password,
      ),
    ).thenAnswer((_) async => const Right(tUser));

    // Act
    final result = await useCase(tParams);

    // Assert
    expect(result, const Right<Failure, UserEntity>(tUser));
    verify(
      () => mockAuthRepository.login(
        email: tParams.email,
        password: tParams.password,
      ),
    ).called(1);
    verifyNoMoreInteractions(mockAuthRepository);
  });

  test('should return ServerFailure when login fails', () async {
    // Arrange
    const tFailure = ServerFailure('Invalid credentials');
    when(
      () => mockAuthRepository.login(
        email: tParams.email,
        password: tParams.password,
      ),
    ).thenAnswer((_) async => const Left(tFailure));

    // Act
    final result = await useCase(tParams);

    // Assert
    expect(result, const Left<Failure, UserEntity>(tFailure));
    verify(
      () => mockAuthRepository.login(
        email: tParams.email,
        password: tParams.password,
      ),
    ).called(1);
    verifyNoMoreInteractions(mockAuthRepository);
  });
}
