import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wassaly/features/auth/domain/entities/user_entity.dart';

part 'session_event.freezed.dart';

@freezed
sealed class SessionEvent with _$SessionEvent {
  const factory SessionEvent.loginRequested({
    required String email,
    required String password,
  }) = SessionLoginRequested;
  const factory SessionEvent.checkRequested() = SessionCheckRequested;
  const factory SessionEvent.logoutRequested() = SessionLogoutRequested;
  const factory SessionEvent.userUpdated(UserEntity user) = SessionUserUpdated;
  const factory SessionEvent.connectivityRestored() =
      SessionConnectivityRestored;
}
