part of 'login_bloc.dart';

class LoginState extends Equatable {
  final String email;
  final String password;
  final bool isPasswordVisible;
  final bool isLoading;
  final String? errorMessage;
  final UserEntity? user;
  final bool requiresVerification;
  final String? verificationEmail;

  const LoginState({
    this.email = '',
    this.password = '',
    this.isPasswordVisible = false,
    this.isLoading = false,
    this.errorMessage,
    this.user,
    this.requiresVerification = false,
    this.verificationEmail,
  });

  LoginState copyWith({
    String? email,
    String? password,
    bool? isPasswordVisible,
    bool? isLoading,
    String? errorMessage,
    UserEntity? user,
    bool? requiresVerification,
    String? verificationEmail,
    bool clearError = false,
    bool clearUser = false,
    bool clearVerification = false,
  }) {
    return LoginState(
      email: email ?? this.email,
      password: password ?? this.password,
      isPasswordVisible: isPasswordVisible ?? this.isPasswordVisible,
      isLoading: isLoading ?? this.isLoading,
      errorMessage: clearError ? null : (errorMessage ?? this.errorMessage),
      user: clearUser ? null : (user ?? this.user),
      requiresVerification: clearVerification
          ? false
          : (requiresVerification ?? this.requiresVerification),
      verificationEmail: clearVerification
          ? null
          : (verificationEmail ?? this.verificationEmail),
    );
  }

  @override
  List<Object?> get props => [
        email,
        password,
        isPasswordVisible,
        isLoading,
        errorMessage,
        user,
        requiresVerification,
        verificationEmail,
      ];
}
