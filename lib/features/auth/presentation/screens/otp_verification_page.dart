import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/auth/presentation/bloc/otp_verification/otp_verification_bloc.dart';
import 'package:wassaly/features/auth/presentation/screens/reset_password_page.dart';
import 'package:wassaly/features/auth/presentation/widgets/otp_verification/otp_input_field.dart';
import 'package:wassaly/features/auth/presentation/widgets/otp_verification/otp_verification_header.dart';
import 'package:wassaly/features/auth/presentation/widgets/otp_verification/resend_otp_widget.dart';

class OtpVerificationPage extends StatelessWidget {
  const OtpVerificationPage({
    super.key,
    required this.email,
    this.verificationType = VerificationType.register,
  });

  final String email;
  final VerificationType verificationType;

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (_) => sl<OtpVerificationBloc>(
          param1: email,
          param2: verificationType,
        ),
        child: _OtpVerificationView(
          email: email,
          verificationType: verificationType,
        ),
      );
}

class _OtpVerificationView extends StatefulWidget {
  const _OtpVerificationView({
    required this.email,
    required this.verificationType,
  });

  final String email;
  final VerificationType verificationType;

  @override
  State<_OtpVerificationView> createState() => _OtpVerificationViewState();
}

class _OtpVerificationViewState extends State<_OtpVerificationView> {
  final GlobalKey<OtpInputFieldState> _otpInputKey =
      GlobalKey<OtpInputFieldState>();
  String _currentOtp = '';

  void _onOtpChanged(String otp) {
    _currentOtp = otp;
    context.read<OtpVerificationBloc>().add(OtpDigitChanged(otp));
  }

  void _onOtpCompleted(String otp) {
    _currentOtp = otp;
    context.read<OtpVerificationBloc>().add(OtpDigitChanged(otp));
    context.hideKeyboard();
  }

  void _onVerifyPressed() {
    if (_currentOtp.length == 6) {
      context.read<OtpVerificationBloc>().add(const VerifyOtpSubmitted());
    }
  }

  void _onResendPressed() {
    context.read<OtpVerificationBloc>().add(const ResendOtpRequested());
  }

  @override
  Widget build(BuildContext context) {
    final cs = context.theme.colorScheme;

    return BlocListener<OtpVerificationBloc, OtpVerificationState>(
      listenWhen: (previous, current) =>
          previous.verificationStatus != current.verificationStatus ||
          previous.errorMessage != current.errorMessage ||
          previous.resendStatus != current.resendStatus,
      listener: (context, state) {
        if (state.verificationStatus ==
            OtpVerificationStatus.verifiedForRegister) {
          context
            ..showTypedSnackBar(
              context.l10n.otp_verification_success,
              type: SnackBarType.success,
            )
            ..go(AppRoutes.login);
        }

        if (state.verificationStatus ==
            OtpVerificationStatus.verifiedForForgotPassword) {
          context.showTypedSnackBar(
            context.l10n.otp_verification_success,
            type: SnackBarType.success,
          );
          if (state.resetToken != null) {
            unawaited(
              context.push(
                AppRoutes.resetPassword,
                extra: ResetPasswordArgs(
                  email: state.email,
                  token: state.resetToken!,
                ),
              ),
            );
          }
        }

        if (state.verificationStatus ==
            OtpVerificationStatus.verifiedForLogin) {
          context
            ..showTypedSnackBar(
              context.l10n.otp_verification_success,
              type: SnackBarType.success,
            )
            ..go(AppRoutes.login);
        }

        if (state.verificationStatus == OtpVerificationStatus.error &&
            state.errorMessage != null) {
          context.showTypedSnackBar(
            state.errorMessage!,
            type: SnackBarType.error,
          );
        }

        if (state.resendStatus == ResendOtpStatus.success) {
          context.showTypedSnackBar(
            context.l10n.otp_resend_success,
            type: SnackBarType.success,
          );
        }

        if (state.resendStatus == ResendOtpStatus.error &&
            state.errorMessage != null) {
          context.showTypedSnackBar(
            state.errorMessage!,
            type: SnackBarType.error,
          );
        }
      },
      child: Scaffold(
        backgroundColor: cs.surface,
        body: SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 18.w),
            child: Column(
              children: [
                OtpVerificationHeader(email: widget.email),
                OtpInputField(
                  key: _otpInputKey,
                  length: 6,
                  onChanged: _onOtpChanged,
                  onCompleted: _onOtpCompleted,
                ),
                32.verticalSpace,
                ResendOtpWidget(onResend: _onResendPressed),
                40.verticalSpace,
                BlocSelector<OtpVerificationBloc, OtpVerificationState,
                    (bool, OtpVerificationStatus)>(
                  selector: (state) =>
                      (state.canVerify, state.verificationStatus),
                  builder: (context, data) {
                    final (canVerify, verificationStatus) = data;
                    final isLoading =
                        verificationStatus == OtpVerificationStatus.loading;

                    return AppButton(
                      label: context.l10n.otp_verify_now,
                      onPressed: canVerify ? _onVerifyPressed : null,
                      isLoading: isLoading,
                      isFullWidth: true,
                      variant: ButtonVariant.success,
                      suffixIcon: !isLoading
                          ? Icon(
                              Icons.verified_outlined,
                              color: cs.onPrimary,
                              size: 24.w,
                            )
                          : null,
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
