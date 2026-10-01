import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/auth/domain/usecases/forget_send_otp_usecase.dart';
import 'package:wassaly/features/auth/presentation/bloc/forgot_password/forgot_password_event.dart';
import 'package:wassaly/features/auth/presentation/bloc/forgot_password/forgot_password_state.dart';

export 'forgot_password_event.dart';
export 'forgot_password_state.dart';

class ForgotPasswordBloc
    extends Bloc<ForgotPasswordEvent, ForgotPasswordState> {
  final ForgetSendOtpUseCase _forgetSendOtpUseCase;

  ForgotPasswordBloc({
    ForgetSendOtpUseCase? forgetSendOtpUseCase,
  })  : _forgetSendOtpUseCase =
            forgetSendOtpUseCase ?? sl<ForgetSendOtpUseCase>(),
        super(const ForgotPasswordState()) {
    on<EmailChanged>(_onEmailChanged);
    on<SendOtpSubmitted>(_onSendOtpSubmitted);
  }

  void _onEmailChanged(EmailChanged event, Emitter<ForgotPasswordState> emit) {
    emit(state.copyWith(email: event.email, errorMessage: null));
  }

  Future<void> _onSendOtpSubmitted(
    SendOtpSubmitted event,
    Emitter<ForgotPasswordState> emit,
  ) async {
    emit(state.copyWith(isLoading: true, errorMessage: null));

    final result = await _forgetSendOtpUseCase(
      ForgetSendOtpParams(email: state.email),
    );

    result.fold(
      (failure) => emit(state.copyWith(
        isLoading: false,
        errorMessage: failure.message,
      )),
      (_) => emit(state.copyWith(
        isLoading: false,
        isSuccess: true,
      )),
    );
  }
}
