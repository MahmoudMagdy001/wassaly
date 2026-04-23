enum VerificationType {
  register,
  forgotPassword,
  login;

  bool get isRegister => this == VerificationType.register;
  bool get isForgotPassword => this == VerificationType.forgotPassword;
  bool get isLogin => this == VerificationType.login;
}
