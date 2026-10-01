import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/auth/domain/usecases/signup_usecase.dart';
import 'package:wassaly/features/auth/presentation/bloc/signup/signup_event.dart';
import 'package:wassaly/features/auth/presentation/bloc/signup/signup_state.dart';

export 'signup_event.dart';
export 'signup_state.dart';

class SignupBloc extends Bloc<SignupEvent, SignupState> {
  final SignupUseCase _signupUseCase;

  SignupBloc({
    required SignupUseCase signupUseCase,
  })  : _signupUseCase = signupUseCase,
        super(const SignupState()) {
    on<NameChanged>(_onNameChanged);
    on<PhoneChanged>(_onPhoneChanged);
    on<EmailChanged>(_onEmailChanged);
    on<PasswordChanged>(_onPasswordChanged);
    on<PasswordVisibilityChanged>(_onPasswordVisibilityChanged);
    on<ConfirmPasswordChanged>(_onConfirmPasswordChanged);
    on<ConfirmPasswordVisibilityChanged>(_onConfirmPasswordVisibilityChanged);
    on<TermsAcceptedChanged>(_onTermsAcceptedChanged);
    on<AvatarChanged>(_onAvatarChanged);
    on<SignupSubmitted>(_onSignupSubmitted);
  }

  void _onNameChanged(NameChanged event, Emitter<SignupState> emit) {
    emit(state.copyWith(name: event.name, errorMessage: null));
  }

  void _onPhoneChanged(PhoneChanged event, Emitter<SignupState> emit) {
    emit(state.copyWith(phone: event.phone, errorMessage: null));
  }

  void _onEmailChanged(EmailChanged event, Emitter<SignupState> emit) {
    emit(state.copyWith(email: event.email, errorMessage: null));
  }

  void _onPasswordChanged(PasswordChanged event, Emitter<SignupState> emit) {
    emit(state.copyWith(password: event.password, errorMessage: null));
  }

  void _onPasswordVisibilityChanged(
    PasswordVisibilityChanged event,
    Emitter<SignupState> emit,
  ) {
    emit(state.copyWith(isPasswordVisible: event.isVisible));
  }

  void _onConfirmPasswordChanged(
    ConfirmPasswordChanged event,
    Emitter<SignupState> emit,
  ) {
    emit(state.copyWith(
      confirmPassword: event.confirmPassword,
      errorMessage: null,
    ));
  }

  void _onConfirmPasswordVisibilityChanged(
    ConfirmPasswordVisibilityChanged event,
    Emitter<SignupState> emit,
  ) {
    emit(state.copyWith(isConfirmPasswordVisible: event.isVisible));
  }

  void _onTermsAcceptedChanged(
    TermsAcceptedChanged event,
    Emitter<SignupState> emit,
  ) {
    emit(state.copyWith(isTermsAccepted: event.isAccepted, errorMessage: null));
  }

  void _onAvatarChanged(
    AvatarChanged event,
    Emitter<SignupState> emit,
  ) {
    emit(state.copyWith(
      avatarFile: event.avatarFile,
      errorMessage: null,
    ));
  }

  Future<void> _onSignupSubmitted(
    SignupSubmitted event,
    Emitter<SignupState> emit,
  ) async {
    if (!state.isTermsAccepted) {
      emit(state.copyWith(
        errorMessage: 'auth_terms_required',
      ));
      return;
    }

    emit(state.copyWith(isLoading: true, errorMessage: null));

    final result = await _signupUseCase(
      SignupParams(
        name: state.name,
        phone: state.phone,
        email: state.email,
        password: state.password,
        confirmPassword: state.confirmPassword,
        avatarFile: state.avatarFile,
      ),
    );

    result.fold(
      (failure) => emit(state.copyWith(
        isLoading: false,
        errorMessage: failure.message,
      )),
      (user) => emit(state.copyWith(
        isLoading: false,
        isRegistered: true,
      )),
    );
  }
}
