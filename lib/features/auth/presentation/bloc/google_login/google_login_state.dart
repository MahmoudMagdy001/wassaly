import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wassaly/features/auth/domain/entities/user_entity.dart';

part 'google_login_state.freezed.dart';

@freezed
abstract class GoogleLoginState with _$GoogleLoginState {
  const factory GoogleLoginState({
    @Default(false) bool isLoading,
    String? errorMessage,
    UserEntity? user,
  }) = _GoogleLoginState;
}
