import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/auth/domain/entities/user_entity.dart';
import 'package:wassaly/features/auth/domain/usecases/get_profile_usecase.dart';
import 'package:wassaly/features/auth/domain/usecases/get_saved_token_usecase.dart';
import 'package:wassaly/features/auth/domain/usecases/login_usecase.dart';
import 'package:wassaly/features/auth/domain/usecases/logout_usecase.dart';

part 'session_event.dart';
part 'session_state.dart';

class SessionBloc extends Bloc<SessionEvent, SessionState> {
  final LoginUseCase _loginUseCase;
  final GetSavedTokenUseCase _getSavedTokenUseCase;
  final GetProfileUseCase _getProfileUseCase;
  final LogoutUseCase _logoutUseCase;

  SessionBloc({
    required LoginUseCase loginUseCase,
    required GetSavedTokenUseCase getSavedTokenUseCase,
    required GetProfileUseCase getProfileUseCase,
    required LogoutUseCase logoutUseCase,
  })  : _loginUseCase = loginUseCase,
        _getSavedTokenUseCase = getSavedTokenUseCase,
        _getProfileUseCase = getProfileUseCase,
        _logoutUseCase = logoutUseCase,
        super(const SessionInitial()) {
    on<SessionLoginRequested>(_onSessionLoginRequested);
    on<SessionCheckRequested>(_onSessionCheckRequested);
    on<SessionLogoutRequested>(_onSessionLogoutRequested);
    on<SessionUserUpdated>(_onSessionUserUpdated);
  }

  Future<void> _onSessionLoginRequested(
    SessionLoginRequested event,
    Emitter<SessionState> emit,
  ) async {
    emit(const SessionLoading());

    final result = await _loginUseCase(
      LoginParams(
        email: event.email,
        password: event.password,
      ),
    );

    result.fold(
      (failure) => emit(SessionError(failure.message)),
      (user) => emit(SessionAuthenticated(user)),
    );
  }

  Future<void> _onSessionCheckRequested(
    SessionCheckRequested event,
    Emitter<SessionState> emit,
  ) async {
    emit(const SessionLoading());

    // Step 1: Check if token exists in secure storage
    final tokenResult = await _getSavedTokenUseCase();

    final token = tokenResult.fold(
      (failure) => null,
      (token) => token,
    );

    if (token == null) {
      // No token → navigate to Login
      emit(const SessionUnauthenticated());
      return;
    }

    // Step 2: Validate token via API (get profile)
    final profileResult = await _getProfileUseCase();

    profileResult.fold(
      (failure) {
        // Token is invalid or API error → clear auth data and navigate to Login
        _logoutUseCase();
        emit(const SessionUnauthenticated());
      },
      (user) {
        // Token is valid → update cached user and navigate to Home
        emit(SessionAuthenticated(user));
      },
    );
  }

  Future<void> _onSessionLogoutRequested(
    SessionLogoutRequested event,
    Emitter<SessionState> emit,
  ) async {
    emit(const SessionLoading());

    await _logoutUseCase();

    emit(const SessionUnauthenticated());
  }

  void _onSessionUserUpdated(
    SessionUserUpdated event,
    Emitter<SessionState> emit,
  ) {
    emit(SessionAuthenticated(event.user));
  }
}
