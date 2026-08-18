import 'dart:async';

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';
import 'package:wassaly/core/services/internet_connection_service.dart';
import 'package:wassaly/core/utils/failure.dart';
import 'package:wassaly/features/auth/domain/entities/user_entity.dart';
import 'package:wassaly/features/auth/domain/usecases/clear_user_session_usecase.dart';
import 'package:wassaly/features/auth/domain/usecases/get_cached_user_usecase.dart';
import 'package:wassaly/features/auth/domain/usecases/get_profile_usecase.dart';
import 'package:wassaly/features/auth/domain/usecases/get_saved_token_usecase.dart';
import 'package:wassaly/features/auth/domain/usecases/login_usecase.dart';
import 'package:wassaly/features/auth/domain/usecases/logout_usecase.dart';
import 'package:wassaly/features/auth/presentation/bloc/session/session_bloc.dart';

class MockLoginUseCase extends Mock implements LoginUseCase {}
class MockGetSavedTokenUseCase extends Mock implements GetSavedTokenUseCase {}
class MockGetProfileUseCase extends Mock implements GetProfileUseCase {}
class MockGetCachedUserUseCase extends Mock implements GetCachedUserUseCase {}
class MockLogoutUseCase extends Mock implements LogoutUseCase {}
class MockClearUserSessionUseCase extends Mock implements ClearUserSessionUseCase {}
class MockInternetConnectionService extends Mock implements InternetConnectionService {}

void main() {
  late MockLoginUseCase mockLoginUseCase;
  late MockGetSavedTokenUseCase mockGetSavedTokenUseCase;
  late MockGetProfileUseCase mockGetProfileUseCase;
  late MockGetCachedUserUseCase mockGetCachedUserUseCase;
  late MockLogoutUseCase mockLogoutUseCase;
  late MockClearUserSessionUseCase mockClearUserSessionUseCase;
  late MockInternetConnectionService mockInternetConnectionService;
  late StreamController<void> connectivityStreamController;

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
    mockGetSavedTokenUseCase = MockGetSavedTokenUseCase();
    mockGetProfileUseCase = MockGetProfileUseCase();
    mockGetCachedUserUseCase = MockGetCachedUserUseCase();
    mockLogoutUseCase = MockLogoutUseCase();
    mockClearUserSessionUseCase = MockClearUserSessionUseCase();
    mockInternetConnectionService = MockInternetConnectionService();
    connectivityStreamController = StreamController<void>.broadcast();

    when(() => mockInternetConnectionService.connectivityRestoredStream)
        .thenAnswer((_) => connectivityStreamController.stream);
  });

  tearDown(() async {
    await connectivityStreamController.close();
  });

  SessionBloc buildBloc() => SessionBloc(
        loginUseCase: mockLoginUseCase,
        getSavedTokenUseCase: mockGetSavedTokenUseCase,
        getProfileUseCase: mockGetProfileUseCase,
        getCachedUserUseCase: mockGetCachedUserUseCase,
        logoutUseCase: mockLogoutUseCase,
        clearUserSessionUseCase: mockClearUserSessionUseCase,
        internetConnectionService: mockInternetConnectionService,
      );

  group('SessionBloc', () {
    test('initial state is SessionInitial', () async {
      final bloc = buildBloc();
      expect(bloc.state, const SessionInitial());
      await bloc.close();
    });

    blocTest<SessionBloc, SessionState>(
      'emits [SessionLoading, SessionAuthenticated] when SessionLoginRequested succeeds',
      build: () {
        when(() => mockLoginUseCase(any()))
            .thenAnswer((_) async => const Right(tUser));
        return buildBloc();
      },
      act: (bloc) => bloc.add(
        const SessionLoginRequested(
          email: 'test@example.com',
          password: 'password123',
        ),
      ),
      expect: () => [
        const SessionLoading(),
        const SessionAuthenticated(tUser),
      ],
    );

    blocTest<SessionBloc, SessionState>(
      'emits [SessionLoading, SessionError] when SessionLoginRequested fails',
      build: () {
        when(() => mockLoginUseCase(any()))
            .thenAnswer((_) async => const Left(ServerFailure('Login failed')));
        return buildBloc();
      },
      act: (bloc) => bloc.add(
        const SessionLoginRequested(
          email: 'test@example.com',
          password: 'password123',
        ),
      ),
      expect: () => [
        const SessionLoading(),
        const SessionError('Login failed'),
      ],
    );

    blocTest<SessionBloc, SessionState>(
      'emits [SessionLoading, SessionUnauthenticated] when SessionCheckRequested finds no saved token',
      build: () {
        when(() => mockGetSavedTokenUseCase())
            .thenAnswer((_) async => const Right(null));
        return buildBloc();
      },
      act: (bloc) => bloc.add(const SessionCheckRequested()),
      expect: () => [
        const SessionLoading(),
        const SessionUnauthenticated(),
      ],
    );

    blocTest<SessionBloc, SessionState>(
      'emits [SessionLoading, SessionAuthenticated] when SessionCheckRequested finds valid token & profile',
      build: () {
        when(() => mockGetSavedTokenUseCase())
            .thenAnswer((_) async => const Right('saved_jwt_token'));
        when(() => mockGetProfileUseCase())
            .thenAnswer((_) async => const Right(tUser));
        return buildBloc();
      },
      act: (bloc) => bloc.add(const SessionCheckRequested()),
      expect: () => [
        const SessionLoading(),
        const SessionAuthenticated(tUser),
      ],
    );

    blocTest<SessionBloc, SessionState>(
      'emits [SessionLoading, SessionUnauthenticated] when SessionLogoutRequested is dispatched',
      build: () {
        when(() => mockClearUserSessionUseCase())
            .thenAnswer((_) async => const Right(null));
        return buildBloc();
      },
      act: (bloc) => bloc.add(const SessionLogoutRequested()),
      expect: () => [
        const SessionLoading(),
        const SessionUnauthenticated(),
      ],
    );
  });
}
