import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';
import 'package:wassaly/core/services/fcm_token_service.dart';
import 'package:wassaly/core/utils/failure.dart';
import 'package:wassaly/features/auth/domain/entities/user_entity.dart';
import 'package:wassaly/features/auth/domain/usecases/login_usecase.dart';
import 'package:wassaly/features/auth/domain/usecases/resend_otp_usecase.dart';
import 'package:wassaly/features/auth/presentation/bloc/login/login_bloc.dart';

class MockLoginUseCase extends Mock implements LoginUseCase {}
class MockResendOtpUseCase extends Mock implements ResendOtpUseCase {}
class MockFcmTokenService extends Mock implements FcmTokenService {}

void main() {
  late MockLoginUseCase mockLoginUseCase;
  late MockResendOtpUseCase mockResendOtpUseCase;
  late MockFcmTokenService mockFcmTokenService;

  const tUser = UserEntity(
    id: '1',
    email: 'test@example.com',
    name: 'Test User',
  );

  setUpAll(() {
    registerFallbackValue(const LoginParams(email: '', password: ''));
  });

  setUp(() {
    mockLoginUseCase = MockLoginUseCase();
    mockResendOtpUseCase = MockResendOtpUseCase();
    mockFcmTokenService = MockFcmTokenService();

    when(() => mockFcmTokenService.registerToken(any())).thenAnswer((_) async {});
    when(() => mockFcmTokenService.setupTokenRefresh(any())).thenReturn(null);
  });

  LoginBloc buildBloc() => LoginBloc(
        loginUseCase: mockLoginUseCase,
        resendOtpUseCase: mockResendOtpUseCase,
        fcmTokenService: mockFcmTokenService,
      );

  group('LoginBloc', () {
    test('initial state has empty email and password', () async {
      final bloc = buildBloc();
      expect(bloc.state, const LoginState());
      await bloc.close();
    });

    blocTest<LoginBloc, LoginState>(
      'updates email on EmailChanged',
      build: buildBloc,
      act: (bloc) => bloc.add(const EmailChanged('user@test.com')),
      expect: () => [
        const LoginState(email: 'user@test.com'),
      ],
    );

    blocTest<LoginBloc, LoginState>(
      'updates password on PasswordChanged',
      build: buildBloc,
      act: (bloc) => bloc.add(const PasswordChanged('pass123')),
      expect: () => [
        const LoginState(password: 'pass123'),
      ],
    );

    blocTest<LoginBloc, LoginState>(
      'updates password visibility on PasswordVisibilityChanged',
      build: buildBloc,
      act: (bloc) => bloc.add(const PasswordVisibilityChanged(isVisible: true)),
      expect: () => [
        const LoginState(isPasswordVisible: true),
      ],
    );

    blocTest<LoginBloc, LoginState>(
      'emits [isLoading: true, user: tUser] on successful LoginSubmitted',
      build: () {
        when(() => mockLoginUseCase(any()))
            .thenAnswer((_) async => const Right<Failure, UserEntity>(tUser));
        return buildBloc();
      },
      seed: () => const LoginState(email: 'test@example.com', password: 'password123'),
      act: (bloc) => bloc.add(const LoginSubmitted()),
      expect: () => [
        const LoginState(
          email: 'test@example.com',
          password: 'password123',
          isLoading: true,
        ),
        const LoginState(
          email: 'test@example.com',
          password: 'password123',
          user: tUser,
        ),
      ],
    );

    blocTest<LoginBloc, LoginState>(
      'emits [isLoading: true, errorMessage: failure] on LoginSubmitted failure',
      build: () {
        when(() => mockLoginUseCase(any()))
            .thenAnswer((_) async => const Left<Failure, UserEntity>(ServerFailure('Invalid credentials')));
        return buildBloc();
      },
      seed: () => const LoginState(email: 'test@example.com', password: 'wrong'),
      act: (bloc) => bloc.add(const LoginSubmitted()),
      expect: () => [
        const LoginState(
          email: 'test@example.com',
          password: 'wrong',
          isLoading: true,
        ),
        const LoginState(
          email: 'test@example.com',
          password: 'wrong',
          errorMessage: 'Invalid credentials',
        ),
      ],
    );
  });
}
