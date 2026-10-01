import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/auth/domain/usecases/login_usecase.dart';
import 'package:wassaly/features/auth/domain/usecases/resend_otp_usecase.dart';
import 'package:wassaly/features/auth/presentation/bloc/login/login_event.dart';
import 'package:wassaly/features/auth/presentation/bloc/login/login_state.dart';

export 'login_event.dart';
export 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginUseCase _loginUseCase;
  final ResendOtpUseCase _resendOtpUseCase;
  final FcmTokenService _fcmTokenService;

  LoginBloc({
    required LoginUseCase loginUseCase,
    required ResendOtpUseCase resendOtpUseCase,
    FcmTokenService? fcmTokenService,
  })  : _loginUseCase = loginUseCase,
        _resendOtpUseCase = resendOtpUseCase,
        _fcmTokenService = fcmTokenService ?? FcmTokenService.instance,
        super(const LoginState()) {
    on<EmailChanged>(_onEmailChanged);
    on<PasswordChanged>(_onPasswordChanged);
    on<PasswordVisibilityChanged>(_onPasswordVisibilityChanged);
    on<LoginSubmitted>(_onLoginSubmitted);
    on<LoginRequiresVerification>(_onLoginRequiresVerification);
  }

  void _onEmailChanged(EmailChanged event, Emitter<LoginState> emit) {
    emit(state.copyWith(email: event.email, errorMessage: null));
  }

  void _onPasswordChanged(PasswordChanged event, Emitter<LoginState> emit) {
    emit(state.copyWith(password: event.password, errorMessage: null));
  }

  void _onPasswordVisibilityChanged(
    PasswordVisibilityChanged event,
    Emitter<LoginState> emit,
  ) {
    emit(state.copyWith(isPasswordVisible: event.isVisible));
  }

  Future<void> _onLoginSubmitted(
    LoginSubmitted event,
    Emitter<LoginState> emit,
  ) async {
    emit(state.copyWith(isLoading: true, errorMessage: null));

    final result = await _loginUseCase(
      LoginParams(
        email: state.email,
        password: state.password,
      ),
    );

    result.fold(
      (failure) {
        // Check if the error indicates account is not verified (robust language-independent check)
        final msg = failure.message.toLowerCase();
        if (msg.contains('not active') ||
            msg.contains('active') ||
            msg.contains('غير نشط') ||
            msg.contains('نشط')) {
          emit(
            state.copyWith(
              isLoading: false,
              verificationEmail: state.email,
              errorMessage: null,
            ),
          );
          // Dispatch event to send OTP
          add(LoginRequiresVerification(state.email));
        } else {
          emit(
            state.copyWith(
              isLoading: false,
              errorMessage: failure.message,
            ),
          );
        }
      },
      (user) {
        final userId = int.tryParse(user.id) ?? 0;
        if (userId > 0) {
          // Fire-and-forget: register FCM token and set up refresh listener
          unawaited(_fcmTokenService.registerToken(userId));
          _fcmTokenService.setupTokenRefresh(userId);
        }
        emit(
          state.copyWith(
            isLoading: false,
            user: user,
            requiresVerification: false,
            verificationEmail: null,
          ),
        );
      },
    );
  }

  Future<void> _onLoginRequiresVerification(
    LoginRequiresVerification event,
    Emitter<LoginState> emit,
  ) async {
    emit(state.copyWith(isLoading: true, errorMessage: null));

    final result = await _resendOtpUseCase(
      ResendOtpParams(email: event.email),
    );

    result.fold(
      (failure) => emit(
        state.copyWith(
          isLoading: false,
          errorMessage: failure.message,
        ),
      ),
      (_) => emit(
        state.copyWith(
          isLoading: false,
          requiresVerification: true,
          verificationEmail: event.email,
        ),
      ),
    );
  }
}
