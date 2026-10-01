import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wassaly/features/auth/domain/entities/user_entity.dart';

part 'session_state.freezed.dart';

@freezed
sealed class SessionState with _$SessionState {
  const factory SessionState.initial() = SessionInitial;
  const factory SessionState.loading() = SessionLoading;
  const factory SessionState.authenticated(UserEntity user) =
      SessionAuthenticated;
  const factory SessionState.unauthenticated() = SessionUnauthenticated;
  const factory SessionState.error(String message) = SessionError;
}
