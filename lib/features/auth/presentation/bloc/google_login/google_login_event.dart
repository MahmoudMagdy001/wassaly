import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wassaly/core/services/deep_link_service.dart';

part 'google_login_event.freezed.dart';

@freezed
sealed class GoogleLoginEvent with _$GoogleLoginEvent {
  const factory GoogleLoginEvent.started() = GoogleLoginStarted;
  const factory GoogleLoginEvent.callbackReceived(
    GoogleLoginCallbackData callbackData,
  ) = GoogleLoginCallbackReceived;
  const factory GoogleLoginEvent.cancelled() = GoogleLoginCancelled;
  const factory GoogleLoginEvent.deepLinkError(String error) =
      GoogleLoginDeepLinkError;
}
